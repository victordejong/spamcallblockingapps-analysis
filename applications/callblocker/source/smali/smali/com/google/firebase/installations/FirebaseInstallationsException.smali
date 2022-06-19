.class public Lcom/google/firebase/installations/FirebaseInstallationsException;
.super Lcom/google/firebase/FirebaseException;
.source "com.google.firebase:firebase-installations@@16.2.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/FirebaseInstallationsException$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/installations/FirebaseInstallationsException$a;


# direct methods
.method public constructor <init>(Lcom/google/firebase/installations/FirebaseInstallationsException$a;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/firebase/FirebaseException;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallationsException;->a:Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    .line 38
    return-void
.end method
