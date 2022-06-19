package com.crashlytics.android.answers;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import io.fabric.sdk.android.services.concurrency.p070a.AbstractC1528a;
import java.util.Random;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/RandomBackoff.class */
class RandomBackoff implements AbstractC1528a {
    final AbstractC1528a backoff;
    final double jitterPercent;
    final Random random;

    public RandomBackoff(AbstractC1528a abstractC1528a, double d) {
        this(abstractC1528a, d, new Random());
    }

    public RandomBackoff(AbstractC1528a abstractC1528a, double d, Random random) {
        if (d < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || d > 1.0d) {
            throw new IllegalArgumentException("jitterPercent must be between 0.0 and 1.0");
        }
        if (abstractC1528a == null) {
            throw new NullPointerException("backoff must not be null");
        }
        if (random == null) {
            throw new NullPointerException("random must not be null");
        }
        this.backoff = abstractC1528a;
        this.jitterPercent = d;
        this.random = random;
    }

    @Override // io.fabric.sdk.android.services.concurrency.p070a.AbstractC1528a
    public long getDelayMillis(int i) {
        return (long) (randomJitter() * this.backoff.getDelayMillis(i));
    }

    double randomJitter() {
        double d = this.jitterPercent;
        double d2 = 1.0d - d;
        return d2 + (((d + 1.0d) - d2) * this.random.nextDouble());
    }
}
