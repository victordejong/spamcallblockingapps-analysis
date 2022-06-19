.class public final Lcom/google/android/gms/internal/measurement/bp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/net/Uri;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Z

.field final f:Z

.field final g:Z

.field final h:Z

.field final i:Lcom/google/android/gms/internal/measurement/bu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/bu",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    move-object v0, p0

    move-object v2, p1

    move v6, v5

    move v7, v5

    move v8, v5

    move-object v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/measurement/bp;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/google/android/gms/internal/measurement/bu;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/google/android/gms/internal/measurement/bu;)V
    .locals 2
    .param p9    # Lcom/google/android/gms/internal/measurement/bu;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Lcom/google/android/gms/internal/measurement/bu",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/bp;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/bp;->b:Landroid/net/Uri;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/bp;->c:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/bp;->d:Ljava/lang/String;

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/bp;->e:Z

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/bp;->f:Z

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/bp;->g:Z

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/bp;->h:Z

    .line 12
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/bp;->i:Lcom/google/android/gms/internal/measurement/bu;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/bj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lcom/google/android/gms/internal/measurement/bj",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    const-wide/high16 v0, -0x3ff8000000000000L    # -3.0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/bj;->a(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;DZ)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/bj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/internal/measurement/bj",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/bj;->a(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/measurement/bj",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/bj;->a(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/measurement/bj",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/bj;->a(Lcom/google/android/gms/internal/measurement/bp;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    return-object v0
.end method
