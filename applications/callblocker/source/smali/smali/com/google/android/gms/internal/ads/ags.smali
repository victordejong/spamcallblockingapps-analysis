.class final Lcom/google/android/gms/internal/ads/ags;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/alg;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/atf;

.field private b:Lcom/google/android/gms/internal/ads/apb;

.field private c:Lcom/google/android/gms/internal/ads/bsa;

.field private d:Lcom/google/android/gms/internal/ads/ame;

.field private e:Lcom/google/android/gms/internal/ads/akf;

.field private f:Lcom/google/android/gms/internal/ads/axk;

.field private g:Lcom/google/android/gms/internal/ads/chd;

.field private h:Lcom/google/android/gms/internal/ads/cfc;

.field private i:Lcom/google/android/gms/internal/ads/cef;

.field private final synthetic j:Lcom/google/android/gms/internal/ads/agf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/agf;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ags;->j:Lcom/google/android/gms/internal/ads/agf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/agf;Lcom/google/android/gms/internal/ads/age;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ags;-><init>(Lcom/google/android/gms/internal/ads/agf;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/akf;)Lcom/google/android/gms/internal/ads/alg;
    .locals 1

    .prologue
    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/akf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ags;->e:Lcom/google/android/gms/internal/ads/akf;

    .line 16
    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/ame;)Lcom/google/android/gms/internal/ads/alg;
    .locals 1

    .prologue
    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ame;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ags;->d:Lcom/google/android/gms/internal/ads/ame;

    .line 20
    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/apb;)Lcom/google/android/gms/internal/ads/alg;
    .locals 1

    .prologue
    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/apb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ags;->b:Lcom/google/android/gms/internal/ads/apb;

    .line 28
    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/atf;)Lcom/google/android/gms/internal/ads/alg;
    .locals 1

    .prologue
    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/atf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ags;->a:Lcom/google/android/gms/internal/ads/atf;

    .line 32
    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/axk;)Lcom/google/android/gms/internal/ads/alg;
    .locals 1

    .prologue
    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/axk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ags;->f:Lcom/google/android/gms/internal/ads/axk;

    .line 12
    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/bsa;)Lcom/google/android/gms/internal/ads/alg;
    .locals 1

    .prologue
    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bsa;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ags;->c:Lcom/google/android/gms/internal/ads/bsa;

    .line 24
    return-object p0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/alh;
    .locals 18

    .prologue
    .line 2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ags;->a:Lcom/google/android/gms/internal/ads/atf;

    const-class v2, Lcom/google/android/gms/internal/ads/atf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ags;->b:Lcom/google/android/gms/internal/ads/apb;

    const-class v2, Lcom/google/android/gms/internal/ads/apb;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ags;->c:Lcom/google/android/gms/internal/ads/bsa;

    const-class v2, Lcom/google/android/gms/internal/ads/bsa;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ags;->d:Lcom/google/android/gms/internal/ads/ame;

    const-class v2, Lcom/google/android/gms/internal/ads/ame;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ags;->e:Lcom/google/android/gms/internal/ads/akf;

    const-class v2, Lcom/google/android/gms/internal/ads/akf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ags;->f:Lcom/google/android/gms/internal/ads/axk;

    const-class v2, Lcom/google/android/gms/internal/ads/axk;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/agr;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ags;->j:Lcom/google/android/gms/internal/ads/agf;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ags;->e:Lcom/google/android/gms/internal/ads/akf;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ags;->f:Lcom/google/android/gms/internal/ads/axk;

    new-instance v5, Lcom/google/android/gms/internal/ads/ann;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/ann;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/chy;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/chy;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/aoo;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/aoo;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/bhx;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/bhx;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ags;->a:Lcom/google/android/gms/internal/ads/atf;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/ags;->b:Lcom/google/android/gms/internal/ads/apb;

    new-instance v11, Lcom/google/android/gms/internal/ads/cih;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/cih;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/ags;->c:Lcom/google/android/gms/internal/ads/bsa;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/ags;->d:Lcom/google/android/gms/internal/ads/ame;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/ags;->g:Lcom/google/android/gms/internal/ads/chd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/ags;->h:Lcom/google/android/gms/internal/ads/cfc;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ags;->i:Lcom/google/android/gms/internal/ads/cef;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/agr;-><init>(Lcom/google/android/gms/internal/ads/agf;Lcom/google/android/gms/internal/ads/akf;Lcom/google/android/gms/internal/ads/axk;Lcom/google/android/gms/internal/ads/ann;Lcom/google/android/gms/internal/ads/chy;Lcom/google/android/gms/internal/ads/aoo;Lcom/google/android/gms/internal/ads/bhx;Lcom/google/android/gms/internal/ads/atf;Lcom/google/android/gms/internal/ads/apb;Lcom/google/android/gms/internal/ads/cih;Lcom/google/android/gms/internal/ads/bsa;Lcom/google/android/gms/internal/ads/ame;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cfc;Lcom/google/android/gms/internal/ads/cef;Lcom/google/android/gms/internal/ads/age;)V

    return-object v1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/cef;)Lcom/google/android/gms/internal/ads/aoy;
    .locals 0

    .prologue
    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ags;->i:Lcom/google/android/gms/internal/ads/cef;

    .line 37
    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/cfc;)Lcom/google/android/gms/internal/ads/aoy;
    .locals 0

    .prologue
    .line 38
    .line 39
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ags;->h:Lcom/google/android/gms/internal/ads/cfc;

    .line 41
    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/chd;)Lcom/google/android/gms/internal/ads/aoy;
    .locals 0

    .prologue
    .line 42
    .line 43
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ags;->g:Lcom/google/android/gms/internal/ads/chd;

    .line 45
    return-object p0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ags;->a()Lcom/google/android/gms/internal/ads/alh;

    move-result-object v0

    return-object v0
.end method
