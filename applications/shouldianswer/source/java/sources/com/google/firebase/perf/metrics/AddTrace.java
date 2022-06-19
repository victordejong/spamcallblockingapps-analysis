package com.google.firebase.perf.metrics;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/metrics/AddTrace.class */
public @interface AddTrace {
    boolean enabled() default true;

    String name();
}
