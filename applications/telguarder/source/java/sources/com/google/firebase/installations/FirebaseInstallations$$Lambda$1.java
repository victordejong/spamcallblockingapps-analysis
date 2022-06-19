package com.google.firebase.installations;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/FirebaseInstallations$$Lambda$1.class */
public final /* synthetic */ class FirebaseInstallations$$Lambda$1 implements Runnable {
    private final FirebaseInstallations arg$1;

    private FirebaseInstallations$$Lambda$1(FirebaseInstallations firebaseInstallations) {
        this.arg$1 = firebaseInstallations;
    }

    public static Runnable lambdaFactory$(FirebaseInstallations firebaseInstallations) {
        return new FirebaseInstallations$$Lambda$1(firebaseInstallations);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.arg$1.doRegistrationOrRefresh(false);
    }
}
