.class public Lcom/google/android/gms/auth/api/a$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/a$d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/a$a$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/auth/api/a$a;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/gms/auth/api/a$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/a$a$a;-><init>()V

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/a$a$a;->a()Lcom/google/android/gms/auth/api/a$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/a$a;->a:Lcom/google/android/gms/auth/api/a$a;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/a$a$a;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/auth/api/a$a$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/a$a;->b:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/auth/api/a$a$a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/a$a;->c:Z

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/auth/api/a$a$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/a$a;->d:Ljava/lang/String;

    .line 5
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/api/a$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/auth/api/a$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/auth/api/a$a;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/a$a;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/auth/api/a$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/auth/api/a$a;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    const-string/jumbo v1, "consumer_package"

    iget-object v2, p0, Lcom/google/android/gms/auth/api/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string/jumbo v1, "force_save_dialog"

    iget-boolean v2, p0, Lcom/google/android/gms/auth/api/a$a;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    const-string/jumbo v1, "log_session_id"

    iget-object v2, p0, Lcom/google/android/gms/auth/api/a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8
    if-ne p1, p0, :cond_1

    .line 15
    :cond_0
    :goto_0
    return v0

    .line 10
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/auth/api/a$a;

    if-nez v2, :cond_2

    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_2
    check-cast p1, Lcom/google/android/gms/auth/api/a$a;

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/auth/api/a$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/a$a;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/auth/api/a$a;->c:Z

    iget-boolean v3, p1, Lcom/google/android/gms/auth/api/a$a;->c:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/a$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/a$a;->d:Ljava/lang/String;

    .line 14
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 15
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/auth/api/a$a;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/auth/api/a$a;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/api/a$a;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
