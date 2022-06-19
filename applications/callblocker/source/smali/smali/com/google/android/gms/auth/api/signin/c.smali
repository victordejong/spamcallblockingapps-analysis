.class public Lcom/google/android/gms/auth/api/signin/c;
.super Lcom/google/android/gms/common/api/c;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/signin/c$a;,
        Lcom/google/android/gms/auth/api/signin/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/c",
        "<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Lcom/google/android/gms/auth/api/signin/c$a;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/gms/auth/api/signin/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/c$a;-><init>(Lcom/google/android/gms/auth/api/signin/i;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/c;->b:Lcom/google/android/gms/auth/api/signin/c$a;

    .line 42
    sget v0, Lcom/google/android/gms/auth/api/signin/c$b;->a:I

    sput v0, Lcom/google/android/gms/auth/api/signin/c;->c:I

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    .prologue
    .line 3
    sget-object v0, Lcom/google/android/gms/auth/api/a;->e:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/a;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/internal/n;)V

    .line 4
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/auth/api/a;->e:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/a;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/internal/n;)V

    .line 2
    return-void
.end method

.method private final declared-synchronized k()I
    .locals 4

    .prologue
    .line 5
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/google/android/gms/auth/api/signin/c;->c:I

    sget v1, Lcom/google/android/gms/auth/api/signin/c$b;->a:I

    if-ne v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/c;->i()Landroid/content/Context;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/google/android/gms/common/e;->a()Lcom/google/android/gms/common/e;

    move-result-object v1

    .line 8
    const v2, 0xbdfcb8

    .line 9
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/e;->b(Landroid/content/Context;I)I

    move-result v2

    .line 10
    if-nez v2, :cond_1

    .line 11
    sget v0, Lcom/google/android/gms/auth/api/signin/c$b;->d:I

    sput v0, Lcom/google/android/gms/auth/api/signin/c;->c:I

    .line 16
    :cond_0
    :goto_0
    sget v0, Lcom/google/android/gms/auth/api/signin/c;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 12
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "com.google.android.gms.auth.api.fallback"

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    sget v0, Lcom/google/android/gms/auth/api/signin/c$b;->c:I

    sput v0, Lcom/google/android/gms/auth/api/signin/c;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 15
    :cond_2
    :try_start_2
    sget v0, Lcom/google/android/gms/auth/api/signin/c$b;->b:I

    sput v0, Lcom/google/android/gms/auth/api/signin/c;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/c;->i()Landroid/content/Context;

    move-result-object v1

    .line 18
    sget-object v0, Lcom/google/android/gms/auth/api/signin/i;->a:[I

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/c;->k()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/c;->d()Lcom/google/android/gms/common/api/a$d;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/internal/i;->c(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    .line 19
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/c;->d()Lcom/google/android/gms/common/api/a$d;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/internal/i;->b(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 20
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/c;->d()Lcom/google/android/gms/common/api/a$d;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/internal/i;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()Lcom/google/android/gms/tasks/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/c;->g()Lcom/google/android/gms/common/api/d;

    move-result-object v1

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/c;->i()Landroid/content/Context;

    move-result-object v2

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/c;->k()I

    move-result v0

    sget v3, Lcom/google/android/gms/auth/api/signin/c$b;->c:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    .line 33
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/auth/api/signin/internal/i;->a(Lcom/google/android/gms/common/api/d;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/google/android/gms/tasks/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/c;->g()Lcom/google/android/gms/common/api/d;

    move-result-object v1

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/c;->i()Landroid/content/Context;

    move-result-object v2

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/c;->k()I

    move-result v0

    sget v3, Lcom/google/android/gms/auth/api/signin/c$b;->c:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    .line 39
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/auth/api/signin/internal/i;->b(Lcom/google/android/gms/common/api/d;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
