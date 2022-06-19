package com.crashlytics.android;

import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.beta.Beta;
import com.crashlytics.android.core.CrashlyticsCore;
import com.crashlytics.android.core.CrashlyticsListener;
import com.crashlytics.android.core.PinningInfoProvider;
import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.AbstractC1460i;
import io.fabric.sdk.android.C1449c;
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/Crashlytics.class */
public class Crashlytics extends AbstractC1459h<Void> implements AbstractC1460i {
    public static final String TAG = "Crashlytics";
    public final Answers answers;
    public final Beta beta;
    public final CrashlyticsCore core;
    public final Collection<? extends AbstractC1459h> kits;

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/Crashlytics$Builder.class */
    public static class Builder {
        private Answers answers;
        private Beta beta;
        private CrashlyticsCore core;
        private CrashlyticsCore.Builder coreBuilder;

        private CrashlyticsCore.Builder getCoreBuilder() {
            CrashlyticsCore.Builder builder;
            synchronized (this) {
                if (this.coreBuilder == null) {
                    this.coreBuilder = new CrashlyticsCore.Builder();
                }
                builder = this.coreBuilder;
            }
            return builder;
        }

        public Builder answers(Answers answers) {
            if (answers != null) {
                if (this.answers != null) {
                    throw new IllegalStateException("Answers Kit already set.");
                }
                this.answers = answers;
                return this;
            }
            throw new NullPointerException("Answers Kit must not be null.");
        }

        public Builder beta(Beta beta) {
            if (beta != null) {
                if (this.beta != null) {
                    throw new IllegalStateException("Beta Kit already set.");
                }
                this.beta = beta;
                return this;
            }
            throw new NullPointerException("Beta Kit must not be null.");
        }

        public Crashlytics build() {
            CrashlyticsCore.Builder builder = this.coreBuilder;
            if (builder != null) {
                if (this.core != null) {
                    throw new IllegalStateException("Must not use Deprecated methods delay(), disabled(), listener(), pinningInfoProvider() with core()");
                }
                this.core = builder.build();
            }
            if (this.answers == null) {
                this.answers = new Answers();
            }
            if (this.beta == null) {
                this.beta = new Beta();
            }
            if (this.core == null) {
                this.core = new CrashlyticsCore();
            }
            return new Crashlytics(this.answers, this.beta, this.core);
        }

        public Builder core(CrashlyticsCore crashlyticsCore) {
            if (crashlyticsCore != null) {
                if (this.core != null) {
                    throw new IllegalStateException("CrashlyticsCore Kit already set.");
                }
                this.core = crashlyticsCore;
                return this;
            }
            throw new NullPointerException("CrashlyticsCore Kit must not be null.");
        }

        @Deprecated
        public Builder delay(float f) {
            getCoreBuilder().delay(f);
            return this;
        }

        @Deprecated
        public Builder disabled(boolean z) {
            getCoreBuilder().disabled(z);
            return this;
        }

        @Deprecated
        public Builder listener(CrashlyticsListener crashlyticsListener) {
            getCoreBuilder().listener(crashlyticsListener);
            return this;
        }

        @Deprecated
        public Builder pinningInfo(PinningInfoProvider pinningInfoProvider) {
            getCoreBuilder().pinningInfo(pinningInfoProvider);
            return this;
        }
    }

    public Crashlytics() {
        this(new Answers(), new Beta(), new CrashlyticsCore());
    }

    Crashlytics(Answers answers, Beta beta, CrashlyticsCore crashlyticsCore) {
        this.answers = answers;
        this.beta = beta;
        this.core = crashlyticsCore;
        this.kits = Collections.unmodifiableCollection(Arrays.asList(answers, beta, crashlyticsCore));
    }

    private static void checkInitialized() {
        if (getInstance() != null) {
            return;
        }
        throw new IllegalStateException("Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()");
    }

    public static Crashlytics getInstance() {
        return (Crashlytics) C1449c.m3587a(Crashlytics.class);
    }

    public static PinningInfoProvider getPinningInfoProvider() {
        checkInitialized();
        return getInstance().core.getPinningInfoProvider();
    }

    public static void log(int i, String str, String str2) {
        checkInitialized();
        getInstance().core.log(i, str, str2);
    }

    public static void log(String str) {
        checkInitialized();
        getInstance().core.log(str);
    }

    public static void logException(Throwable th) {
        checkInitialized();
        getInstance().core.logException(th);
    }

    public static void setBool(String str, boolean z) {
        checkInitialized();
        getInstance().core.setBool(str, z);
    }

    public static void setDouble(String str, double d) {
        checkInitialized();
        getInstance().core.setDouble(str, d);
    }

    public static void setFloat(String str, float f) {
        checkInitialized();
        getInstance().core.setFloat(str, f);
    }

    public static void setInt(String str, int i) {
        checkInitialized();
        getInstance().core.setInt(str, i);
    }

    public static void setLong(String str, long j) {
        checkInitialized();
        getInstance().core.setLong(str, j);
    }

    @Deprecated
    public static void setPinningInfoProvider(PinningInfoProvider pinningInfoProvider) {
        C1449c.m3572g().mo3548d(TAG, "Use of Crashlytics.setPinningInfoProvider is deprecated");
    }

    public static void setString(String str, String str2) {
        checkInitialized();
        getInstance().core.setString(str, str2);
    }

    public static void setUserEmail(String str) {
        checkInitialized();
        getInstance().core.setUserEmail(str);
    }

    public static void setUserIdentifier(String str) {
        checkInitialized();
        getInstance().core.setUserIdentifier(str);
    }

    public static void setUserName(String str) {
        checkInitialized();
        getInstance().core.setUserName(str);
    }

    public void crash() {
        this.core.crash();
    }

    @Override // io.fabric.sdk.android.AbstractC1459h
    public Void doInBackground() {
        return null;
    }

    @Deprecated
    public boolean getDebugMode() {
        C1449c.m3572g().mo3548d(TAG, "Use of Crashlytics.getDebugMode is deprecated.");
        getFabric();
        return C1449c.m3571h();
    }

    @Override // io.fabric.sdk.android.AbstractC1459h
    public String getIdentifier() {
        return "com.crashlytics.sdk.android:crashlytics";
    }

    @Override // io.fabric.sdk.android.AbstractC1460i
    public Collection<? extends AbstractC1459h> getKits() {
        return this.kits;
    }

    @Override // io.fabric.sdk.android.AbstractC1459h
    public String getVersion() {
        return "2.9.4.26";
    }

    @Deprecated
    public void setDebugMode(boolean z) {
        C1449c.m3572g().mo3548d(TAG, "Use of Crashlytics.setDebugMode is deprecated.");
    }

    @Deprecated
    public void setListener(CrashlyticsListener crashlyticsListener) {
        synchronized (this) {
            this.core.setListener(crashlyticsListener);
        }
    }

    public boolean verifyPinning(URL url) {
        return this.core.verifyPinning(url);
    }
}
