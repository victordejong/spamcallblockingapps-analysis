.class public final Lcom/google/android/gms/auth/api/credentials/c$a;
.super Lcom/google/android/gms/auth/api/a$a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/credentials/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/a$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Lcom/google/android/gms/auth/api/a$a$a;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/c$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final synthetic a()Lcom/google/android/gms/auth/api/a$a;
    .locals 2

    .line 1004
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/api/credentials/c;-><init>(Lcom/google/android/gms/auth/api/credentials/c$a;Lcom/google/android/gms/auth/api/credentials/i;)V

    return-object v0
.end method
