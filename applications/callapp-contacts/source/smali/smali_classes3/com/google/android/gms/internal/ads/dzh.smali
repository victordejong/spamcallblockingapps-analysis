.class final Lcom/google/android/gms/internal/ads/dzh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/dzp;

.field public final b:Lcom/google/android/gms/internal/ads/dyc;

.field public c:Lcom/google/android/gms/internal/ads/dzn;

.field public d:Lcom/google/android/gms/internal/ads/dzb;

.field public e:I

.field public f:I

.field public g:I

.field public h:Lcom/google/android/gms/internal/ads/dyf;

.field public i:Lcom/google/android/gms/internal/ads/dzm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dyc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/dzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dzp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dzh;->a:Lcom/google/android/gms/internal/ads/dzp;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dzh;->b:Lcom/google/android/gms/internal/ads/dyc;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dzh;->a:Lcom/google/android/gms/internal/ads/dzp;

    const/4 v1, 0x0

    .line 11
    iput v1, v0, Lcom/google/android/gms/internal/ads/dzp;->e:I

    const-wide/16 v2, 0x0

    .line 12
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/dzp;->s:J

    .line 13
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/dzp;->m:Z

    .line 14
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/dzp;->r:Z

    const/4 v2, 0x0

    .line 15
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/dzp;->o:Lcom/google/android/gms/internal/ads/dzm;

    .line 16
    iput v1, p0, Lcom/google/android/gms/internal/ads/dzh;->e:I

    .line 17
    iput v1, p0, Lcom/google/android/gms/internal/ads/dzh;->g:I

    .line 18
    iput v1, p0, Lcom/google/android/gms/internal/ads/dzh;->f:I

    .line 19
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dzh;->h:Lcom/google/android/gms/internal/ads/dyf;

    .line 20
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dzh;->i:Lcom/google/android/gms/internal/ads/dzm;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dzn;Lcom/google/android/gms/internal/ads/dzb;)V
    .locals 1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ecr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dzn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dzh;->c:Lcom/google/android/gms/internal/ads/dzn;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ecr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/dzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dzh;->d:Lcom/google/android/gms/internal/ads/dzb;

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dzh;->b:Lcom/google/android/gms/internal/ads/dyc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dzn;->f:Lcom/google/android/gms/internal/ads/zzht;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/dyc;->a(Lcom/google/android/gms/internal/ads/zzht;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dzh;->a()V

    return-void
.end method
