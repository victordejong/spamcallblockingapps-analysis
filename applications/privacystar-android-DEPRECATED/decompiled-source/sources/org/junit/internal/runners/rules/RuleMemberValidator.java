package org.junit.internal.runners.rules;

import java.lang.annotation.Annotation;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;
import org.junit.ClassRule;
import org.junit.Rule;
import org.junit.rules.MethodRule;
import org.junit.rules.TestRule;
import org.junit.runners.model.FrameworkMember;
import org.junit.runners.model.TestClass;
/* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/rules/RuleMemberValidator.class */
public class RuleMemberValidator {
    private final Class<? extends Annotation> annotation;
    private final boolean methods;
    private final List<RuleValidator> validatorStrategies;
    public static final RuleMemberValidator CLASS_RULE_VALIDATOR = classRuleValidatorBuilder().withValidator(new DeclaringClassMustBePublic()).withValidator(new MemberMustBeStatic()).withValidator(new MemberMustBePublic()).withValidator(new FieldMustBeATestRule()).build();
    public static final RuleMemberValidator RULE_VALIDATOR = testRuleValidatorBuilder().withValidator(new MemberMustBeNonStaticOrAlsoClassRule()).withValidator(new MemberMustBePublic()).withValidator(new FieldMustBeARule()).build();
    public static final RuleMemberValidator CLASS_RULE_METHOD_VALIDATOR = classRuleValidatorBuilder().forMethods().withValidator(new DeclaringClassMustBePublic()).withValidator(new MemberMustBeStatic()).withValidator(new MemberMustBePublic()).withValidator(new MethodMustBeATestRule()).build();
    public static final RuleMemberValidator RULE_METHOD_VALIDATOR = testRuleValidatorBuilder().forMethods().withValidator(new MemberMustBeNonStaticOrAlsoClassRule()).withValidator(new MemberMustBePublic()).withValidator(new MethodMustBeARule()).build();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/rules/RuleMemberValidator$Builder.class */
    public static class Builder {
        private final Class<? extends Annotation> annotation;
        private boolean methods;
        private final List<RuleValidator> validators;

        private Builder(Class<? extends Annotation> cls) {
            this.annotation = cls;
            this.methods = false;
            this.validators = new ArrayList();
        }

        RuleMemberValidator build() {
            return new RuleMemberValidator(this);
        }

        Builder forMethods() {
            this.methods = true;
            return this;
        }

        Builder withValidator(RuleValidator ruleValidator) {
            this.validators.add(ruleValidator);
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/rules/RuleMemberValidator$DeclaringClassMustBePublic.class */
    private static final class DeclaringClassMustBePublic implements RuleValidator {
        private DeclaringClassMustBePublic() {
        }

        private boolean isDeclaringClassPublic(FrameworkMember<?> frameworkMember) {
            return Modifier.isPublic(frameworkMember.getDeclaringClass().getModifiers());
        }

        @Override // org.junit.internal.runners.rules.RuleMemberValidator.RuleValidator
        public void validate(FrameworkMember<?> frameworkMember, Class<? extends Annotation> cls, List<Throwable> list) {
            if (!isDeclaringClassPublic(frameworkMember)) {
                list.add(new ValidationError(frameworkMember, cls, "must be declared in a public class."));
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/rules/RuleMemberValidator$FieldMustBeARule.class */
    private static final class FieldMustBeARule implements RuleValidator {
        private FieldMustBeARule() {
        }

        @Override // org.junit.internal.runners.rules.RuleMemberValidator.RuleValidator
        public void validate(FrameworkMember<?> frameworkMember, Class<? extends Annotation> cls, List<Throwable> list) {
            if (!RuleMemberValidator.isRuleType(frameworkMember)) {
                list.add(new ValidationError(frameworkMember, cls, "must implement MethodRule or TestRule."));
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/rules/RuleMemberValidator$FieldMustBeATestRule.class */
    private static final class FieldMustBeATestRule implements RuleValidator {
        private FieldMustBeATestRule() {
        }

        @Override // org.junit.internal.runners.rules.RuleMemberValidator.RuleValidator
        public void validate(FrameworkMember<?> frameworkMember, Class<? extends Annotation> cls, List<Throwable> list) {
            if (!RuleMemberValidator.isTestRule(frameworkMember)) {
                list.add(new ValidationError(frameworkMember, cls, "must implement TestRule."));
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeNonStaticOrAlsoClassRule.class */
    private static final class MemberMustBeNonStaticOrAlsoClassRule implements RuleValidator {
        private MemberMustBeNonStaticOrAlsoClassRule() {
        }

        @Override // org.junit.internal.runners.rules.RuleMemberValidator.RuleValidator
        public void validate(FrameworkMember<?> frameworkMember, Class<? extends Annotation> cls, List<Throwable> list) {
            boolean isMethodRule = RuleMemberValidator.isMethodRule(frameworkMember);
            boolean z = frameworkMember.getAnnotation(ClassRule.class) != null;
            if (!frameworkMember.isStatic()) {
                return;
            }
            if (isMethodRule || !z) {
                list.add(new ValidationError(frameworkMember, cls, RuleMemberValidator.isMethodRule(frameworkMember) ? "must not be static." : "must not be static or it must be annotated with @ClassRule."));
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/rules/RuleMemberValidator$MemberMustBePublic.class */
    private static final class MemberMustBePublic implements RuleValidator {
        private MemberMustBePublic() {
        }

        @Override // org.junit.internal.runners.rules.RuleMemberValidator.RuleValidator
        public void validate(FrameworkMember<?> frameworkMember, Class<? extends Annotation> cls, List<Throwable> list) {
            if (!frameworkMember.isPublic()) {
                list.add(new ValidationError(frameworkMember, cls, "must be public."));
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeStatic.class */
    private static final class MemberMustBeStatic implements RuleValidator {
        private MemberMustBeStatic() {
        }

        @Override // org.junit.internal.runners.rules.RuleMemberValidator.RuleValidator
        public void validate(FrameworkMember<?> frameworkMember, Class<? extends Annotation> cls, List<Throwable> list) {
            if (!frameworkMember.isStatic()) {
                list.add(new ValidationError(frameworkMember, cls, "must be static."));
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/rules/RuleMemberValidator$MethodMustBeARule.class */
    private static final class MethodMustBeARule implements RuleValidator {
        private MethodMustBeARule() {
        }

        @Override // org.junit.internal.runners.rules.RuleMemberValidator.RuleValidator
        public void validate(FrameworkMember<?> frameworkMember, Class<? extends Annotation> cls, List<Throwable> list) {
            if (!RuleMemberValidator.isRuleType(frameworkMember)) {
                list.add(new ValidationError(frameworkMember, cls, "must return an implementation of MethodRule or TestRule."));
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/rules/RuleMemberValidator$MethodMustBeATestRule.class */
    private static final class MethodMustBeATestRule implements RuleValidator {
        private MethodMustBeATestRule() {
        }

        @Override // org.junit.internal.runners.rules.RuleMemberValidator.RuleValidator
        public void validate(FrameworkMember<?> frameworkMember, Class<? extends Annotation> cls, List<Throwable> list) {
            if (!RuleMemberValidator.isTestRule(frameworkMember)) {
                list.add(new ValidationError(frameworkMember, cls, "must return an implementation of TestRule."));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/rules/RuleMemberValidator$RuleValidator.class */
    public interface RuleValidator {
        void validate(FrameworkMember<?> frameworkMember, Class<? extends Annotation> cls, List<Throwable> list);
    }

    RuleMemberValidator(Builder builder) {
        this.annotation = builder.annotation;
        this.methods = builder.methods;
        this.validatorStrategies = builder.validators;
    }

    private static Builder classRuleValidatorBuilder() {
        return new Builder(ClassRule.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isMethodRule(FrameworkMember<?> frameworkMember) {
        return MethodRule.class.isAssignableFrom(frameworkMember.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isRuleType(FrameworkMember<?> frameworkMember) {
        return isMethodRule(frameworkMember) || isTestRule(frameworkMember);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isTestRule(FrameworkMember<?> frameworkMember) {
        return TestRule.class.isAssignableFrom(frameworkMember.getType());
    }

    private static Builder testRuleValidatorBuilder() {
        return new Builder(Rule.class);
    }

    private void validateMember(FrameworkMember<?> frameworkMember, List<Throwable> list) {
        for (RuleValidator ruleValidator : this.validatorStrategies) {
            ruleValidator.validate(frameworkMember, this.annotation, list);
        }
    }

    public void validate(TestClass testClass, List<Throwable> list) {
        for (FrameworkMember<?> frameworkMember : this.methods ? testClass.getAnnotatedMethods(this.annotation) : testClass.getAnnotatedFields(this.annotation)) {
            validateMember(frameworkMember, list);
        }
    }
}
