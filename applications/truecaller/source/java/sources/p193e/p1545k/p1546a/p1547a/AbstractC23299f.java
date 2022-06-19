package p193e.p1545k.p1546a.p1547a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: e.k.a.a.f */
/* loaded from: classes2-dex2jar.jar:e/k/a/a/f.class */
public @interface AbstractC23299f {

    /* renamed from: e.k.a.a.f$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/f$a.class */
    public enum EnumC23300a {
        ANY,
        NON_PRIVATE,
        PROTECTED_AND_PUBLIC,
        PUBLIC_ONLY,
        NONE,
        DEFAULT;

        /* renamed from: a */
        public boolean m7289a(Member member) {
            int ordinal = ordinal();
            if (ordinal != 0) {
                if (ordinal == 1) {
                    return !Modifier.isPrivate(member.getModifiers());
                }
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        return false;
                    }
                } else if (Modifier.isProtected(member.getModifiers())) {
                    return true;
                }
                return Modifier.isPublic(member.getModifiers());
            }
            return true;
        }
    }

    EnumC23300a creatorVisibility() default EnumC23300a.DEFAULT;

    EnumC23300a fieldVisibility() default EnumC23300a.DEFAULT;

    EnumC23300a getterVisibility() default EnumC23300a.DEFAULT;

    EnumC23300a isGetterVisibility() default EnumC23300a.DEFAULT;

    EnumC23300a setterVisibility() default EnumC23300a.DEFAULT;
}
