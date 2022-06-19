.class public Lcom/google/android/gms/auth/api/signin/d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/h;


# instance fields
.field private a:Lcom/google/android/gms/common/api/Status;

.field private b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/d;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/d;->a:Lcom/google/android/gms/common/api/Status;

    .line 4
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/d;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method

.method public b()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/d;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
