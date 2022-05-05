package com.apptentive.android.sdk.module.engagement.logic;

import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import java.math.BigDecimal;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/logic/ConditionalOperator.class */
public enum ConditionalOperator {
    $exists { // from class: com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator.1
        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public boolean apply(Comparable comparable, Comparable comparable2) {
            boolean z = false;
            if (comparable2 == null || !(comparable2 instanceof Boolean)) {
                return false;
            }
            if ((comparable != null) == ((Boolean) comparable2).booleanValue()) {
                z = true;
            }
            return z;
        }

        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public String description(String str, Comparable comparable, Comparable comparable2) {
            return StringUtils.format("%s ('%s') exists", str, comparable);
        }
    },
    $ne { // from class: com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator.2
        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public boolean apply(Comparable comparable, Comparable comparable2) {
            boolean z = false;
            if (comparable == null || comparable2 == null || comparable.getClass() != comparable2.getClass()) {
                return false;
            }
            if ((comparable instanceof String) && (comparable2 instanceof String)) {
                return !((String) comparable).toLowerCase().equals(((String) comparable2).toLowerCase());
            }
            if (comparable.compareTo(comparable2) != 0) {
                z = true;
            }
            return z;
        }

        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public String description(String str, Comparable comparable, Comparable comparable2) {
            return StringUtils.format("%s ('%s') not equal to '%s'", str, comparable, comparable2);
        }
    },
    $eq { // from class: com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator.3
        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public boolean apply(Comparable comparable, Comparable comparable2) {
            boolean z = true;
            if (comparable == null && comparable2 == null) {
                return true;
            }
            if (comparable == null || comparable2 == null || comparable.getClass() != comparable2.getClass()) {
                return false;
            }
            if ((comparable instanceof String) && (comparable2 instanceof String)) {
                return ((String) comparable).toLowerCase().equals(((String) comparable2).toLowerCase());
            }
            if (comparable.compareTo(comparable2) != 0) {
                z = false;
            }
            return z;
        }

        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public String description(String str, Comparable comparable, Comparable comparable2) {
            return StringUtils.format("%s ('%s') equal to '%s'", str, comparable, comparable2);
        }
    },
    $lt { // from class: com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator.4
        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public boolean apply(Comparable comparable, Comparable comparable2) {
            boolean z = false;
            if (comparable == null || comparable2 == null || comparable.getClass() != comparable2.getClass()) {
                return false;
            }
            if (comparable.compareTo(comparable2) < 0) {
                z = true;
            }
            return z;
        }

        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public String description(String str, Comparable comparable, Comparable comparable2) {
            return StringUtils.format("%s (%s) less than %s", str, comparable, comparable2);
        }
    },
    $lte { // from class: com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator.5
        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public boolean apply(Comparable comparable, Comparable comparable2) {
            boolean z = false;
            if (comparable == null || comparable2 == null || comparable.getClass() != comparable2.getClass()) {
                return false;
            }
            if (comparable.compareTo(comparable2) <= 0) {
                z = true;
            }
            return z;
        }

        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public String description(String str, Comparable comparable, Comparable comparable2) {
            return StringUtils.format("%s ('%s') is less than or equal to '%s'", str, comparable, comparable2);
        }
    },
    $gte { // from class: com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator.6
        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public boolean apply(Comparable comparable, Comparable comparable2) {
            boolean z = false;
            if (comparable == null || comparable2 == null || comparable.getClass() != comparable2.getClass()) {
                return false;
            }
            if (comparable.compareTo(comparable2) >= 0) {
                z = true;
            }
            return z;
        }

        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public String description(String str, Comparable comparable, Comparable comparable2) {
            return StringUtils.format("%s ('%s') is greater than or equal to '%s'", str, comparable, comparable2);
        }
    },
    $gt { // from class: com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator.7
        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public boolean apply(Comparable comparable, Comparable comparable2) {
            boolean z = false;
            if (comparable == null || comparable2 == null || comparable.getClass() != comparable2.getClass()) {
                return false;
            }
            if (comparable.compareTo(comparable2) > 0) {
                z = true;
            }
            return z;
        }

        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public String description(String str, Comparable comparable, Comparable comparable2) {
            return StringUtils.format("%s ('%s') greater than '%s'", str, comparable, comparable2);
        }
    },
    $contains { // from class: com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator.8
        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public boolean apply(Comparable comparable, Comparable comparable2) {
            if (comparable == null || comparable2 == null || !(comparable instanceof String) || !(comparable2 instanceof String)) {
                return false;
            }
            return ((String) comparable).toLowerCase().contains(((String) comparable2).toLowerCase());
        }

        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public String description(String str, Comparable comparable, Comparable comparable2) {
            return StringUtils.format("%s ('%s') contains '%s'", str, comparable, comparable2);
        }
    },
    $starts_with { // from class: com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator.9
        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public boolean apply(Comparable comparable, Comparable comparable2) {
            if (!(comparable instanceof String) || !(comparable2 instanceof String)) {
                return false;
            }
            return ((String) comparable).toLowerCase().startsWith(((String) comparable2).toLowerCase());
        }

        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public String description(String str, Comparable comparable, Comparable comparable2) {
            return StringUtils.format("%s ('%s') starts with '%s'", str, comparable, comparable2);
        }
    },
    $ends_with { // from class: com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator.10
        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public boolean apply(Comparable comparable, Comparable comparable2) {
            if (!(comparable instanceof String) || !(comparable2 instanceof String)) {
                return false;
            }
            return ((String) comparable).toLowerCase().endsWith(((String) comparable2).toLowerCase());
        }

        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public String description(String str, Comparable comparable, Comparable comparable2) {
            return StringUtils.format("%s ('%s') ends with '%s'", str, comparable, comparable2);
        }
    },
    $before { // from class: com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator.11
        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public boolean apply(Comparable comparable, Comparable comparable2) {
            boolean z = false;
            if (!(comparable instanceof Apptentive.DateTime) || !(comparable2 instanceof BigDecimal)) {
                return false;
            }
            if (((Apptentive.DateTime) comparable).compareTo(new Apptentive.DateTime(Double.valueOf(Util.currentTimeSeconds()).doubleValue() + Double.valueOf(((BigDecimal) comparable2).doubleValue()).doubleValue())) < 0) {
                z = true;
            }
            return z;
        }

        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public String description(String str, Comparable comparable, Comparable comparable2) {
            if (!(comparable2 instanceof BigDecimal)) {
                return StringUtils.format("%s ('%s') before date '%s'", str, ConditionalOperator.toPrettyDate(comparable), ConditionalOperator.toPrettyDate(comparable2));
            }
            return StringUtils.format("%s ('%s') before date '%s'", str, ConditionalOperator.toPrettyDate(comparable), ConditionalOperator.toPrettyDate(Double.valueOf(Double.valueOf(Util.currentTimeSeconds()).doubleValue() + Double.valueOf(((BigDecimal) comparable2).doubleValue()).doubleValue())));
        }
    },
    $after { // from class: com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator.12
        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public boolean apply(Comparable comparable, Comparable comparable2) {
            boolean z = false;
            if (!(comparable instanceof Apptentive.DateTime) || !(comparable2 instanceof BigDecimal)) {
                return false;
            }
            if (((Apptentive.DateTime) comparable).compareTo(new Apptentive.DateTime(Double.valueOf(Util.currentTimeSeconds()).doubleValue() + Double.valueOf(((BigDecimal) comparable2).doubleValue()).doubleValue())) > 0) {
                z = true;
            }
            return z;
        }

        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public String description(String str, Comparable comparable, Comparable comparable2) {
            if (!(comparable2 instanceof BigDecimal)) {
                return StringUtils.format("%s ('%s') after date '%s'", str, ConditionalOperator.toPrettyDate(comparable), ConditionalOperator.toPrettyDate(comparable2));
            }
            return StringUtils.format("%s ('%s') after date '%s'", str, ConditionalOperator.toPrettyDate(comparable), ConditionalOperator.toPrettyDate(Double.valueOf(Double.valueOf(Util.currentTimeSeconds()).doubleValue() + Double.valueOf(((BigDecimal) comparable2).doubleValue()).doubleValue())));
        }
    },
    unknown { // from class: com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator.13
        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public boolean apply(Comparable comparable, Comparable comparable2) {
            return false;
        }

        @Override // com.apptentive.android.sdk.module.engagement.logic.ConditionalOperator
        public String description(String str, Comparable comparable, Comparable comparable2) {
            return StringUtils.format("Unknown field '%s'", str);
        }
    };

    public static ConditionalOperator parse(String str) {
        if (str == null) {
            return unknown;
        }
        try {
            return valueOf(str);
        } catch (IllegalArgumentException e) {
            throw new RuntimeException(String.format("Unrecognized ConditionalOperator: %s", str), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String toPrettyDate(Object obj) {
        return obj instanceof Apptentive.DateTime ? StringUtils.toPrettyDate(((Apptentive.DateTime) obj).getDateTime()) : StringUtils.toString(obj);
    }

    public abstract boolean apply(Comparable comparable, Comparable comparable2);

    public abstract String description(String str, Comparable comparable, Comparable comparable2);
}
