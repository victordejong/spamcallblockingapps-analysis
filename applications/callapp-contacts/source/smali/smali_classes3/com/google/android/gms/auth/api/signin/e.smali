.class public final Lcom/google/android/gms/auth/api/signin/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/m;


# instance fields
.field a:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private b:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/e;->a:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/e;->b:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/e;->b:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
