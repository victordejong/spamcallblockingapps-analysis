.class public Lcom/google/android/gms/auth/api/a$a$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/Boolean;

.field protected c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/a$a$a;->b:Ljava/lang/Boolean;

    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/a$a;)V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/a$a$a;->b:Ljava/lang/Boolean;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/auth/api/a$a;->a(Lcom/google/android/gms/auth/api/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/a$a$a;->a:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/auth/api/a$a;->b(Lcom/google/android/gms/auth/api/a$a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/a$a$a;->b:Ljava/lang/Boolean;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/auth/api/a$a;->c(Lcom/google/android/gms/auth/api/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/a$a$a;->c:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/android/gms/auth/api/a$a$a;
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/auth/api/a$a$a;->c:Ljava/lang/String;

    .line 13
    return-object p0
.end method

.method public a()Lcom/google/android/gms/auth/api/a$a;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/gms/auth/api/a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/a$a;-><init>(Lcom/google/android/gms/auth/api/a$a$a;)V

    return-object v0
.end method
