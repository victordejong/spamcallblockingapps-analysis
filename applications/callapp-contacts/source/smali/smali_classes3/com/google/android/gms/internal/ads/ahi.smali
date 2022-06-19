.class final Lcom/google/android/gms/internal/ads/ahi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/clh;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzvt;

.field private final c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/zzvt;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/bza;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/bzz;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/clb;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic i:Lcom/google/android/gms/internal/ads/ago;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ago;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvt;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahi;->i:Lcom/google/android/gms/internal/ads/ago;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ahi;->a:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ahi;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ahi;->c:Ljava/lang/String;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dsl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dsi;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ahi;->d:Lcom/google/android/gms/internal/ads/dsv;

    .line 7
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/dsl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dsi;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ahi;->e:Lcom/google/android/gms/internal/ads/dsv;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ago;->t(Lcom/google/android/gms/internal/ads/ago;)Lcom/google/android/gms/internal/ads/dsv;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/bzu;->a(Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/bzu;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dsj;->a(Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/dsv;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ahi;->f:Lcom/google/android/gms/internal/ads/dsv;

    .line 1002
    invoke-static {}, Lcom/google/android/gms/internal/ads/cab;->a()Lcom/google/android/gms/internal/ads/bzy;

    move-result-object p2

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dsj;->a(Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/dsv;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ahi;->g:Lcom/google/android/gms/internal/ads/dsv;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ahi;->d:Lcom/google/android/gms/internal/ads/dsv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ago;->D(Lcom/google/android/gms/internal/ads/ago;)Lcom/google/android/gms/internal/ads/dsv;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ahi;->e:Lcom/google/android/gms/internal/ads/dsv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ago;->v(Lcom/google/android/gms/internal/ads/ago;)Lcom/google/android/gms/internal/ads/dsv;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ahi;->f:Lcom/google/android/gms/internal/ads/dsv;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ahi;->g:Lcom/google/android/gms/internal/ads/dsv;

    .line 2002
    invoke-static {}, Lcom/google/android/gms/internal/ads/cpr;->a()Lcom/google/android/gms/internal/ads/cpp;

    move-result-object v7

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/cle;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/cle;-><init>(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)V

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dsj;->a(Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/dsv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahi;->h:Lcom/google/android/gms/internal/ads/dsv;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ago;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/agn;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/ahi;-><init>(Lcom/google/android/gms/internal/ads/ago;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvt;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/byy;
    .locals 7

    .line 14
    new-instance v6, Lcom/google/android/gms/internal/ads/byy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ahi;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ahi;->b:Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ahi;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahi;->h:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/clb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahi;->f:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/bza;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/byy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/clb;Lcom/google/android/gms/internal/ads/bza;)V

    return-object v6
.end method
