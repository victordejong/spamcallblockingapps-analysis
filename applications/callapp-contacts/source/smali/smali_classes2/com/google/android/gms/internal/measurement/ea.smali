.class public final Lcom/google/android/gms/internal/measurement/ea;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/net/Uri;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Z

.field final f:Z

.field final g:Z

.field final h:Z

.field final i:Lcom/google/android/gms/internal/measurement/eh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/eh<",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ea;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ea;->b:Landroid/net/Uri;

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ea;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ea;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ea;->e:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ea;->f:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ea;->g:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ea;->h:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ea;->i:Lcom/google/android/gms/internal/measurement/eh;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/ec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/internal/measurement/ec<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/measurement/dw;

    const/4 v0, 0x1

    .line 2
    invoke-direct {p3, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/dw;-><init>(Lcom/google/android/gms/internal/measurement/ea;Ljava/lang/String;Ljava/lang/Long;Z)V

    return-object p3
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/measurement/ec<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/dz;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/dz;-><init>(Lcom/google/android/gms/internal/measurement/ea;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/ec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/measurement/ec<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/measurement/dx;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/dx;-><init>(Lcom/google/android/gms/internal/measurement/ea;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    return-object v0
.end method
