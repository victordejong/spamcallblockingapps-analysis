.class public final Lcom/google/android/exoplayer2/video/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/exoplayer2/video/l;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/l;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 164
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/l$a;->a:Landroid/os/Handler;

    .line 165
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/l$a;->b:Lcom/google/android/exoplayer2/video/l;

    return-void
.end method

.method private synthetic b(IIIF)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->b:Lcom/google/android/exoplayer2/video/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/l;

    .line 226
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/l;->a(IIIF)V

    return-void
.end method

.method private synthetic b(IJ)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->b:Lcom/google/android/exoplayer2/video/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/l;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/l;->a(IJ)V

    return-void
.end method

.method private synthetic b(JI)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->b:Lcom/google/android/exoplayer2/video/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/l;

    .line 212
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/l;->a(JI)V

    return-void
.end method

.method private synthetic b(Landroid/view/Surface;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->b:Lcom/google/android/exoplayer2/video/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/l;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/l;->a(Landroid/view/Surface;)V

    return-void
.end method

.method private synthetic b(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->b:Lcom/google/android/exoplayer2/video/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/l;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/video/l;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->b:Lcom/google/android/exoplayer2/video/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/l;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;JJ)V
    .locals 7

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->b:Lcom/google/android/exoplayer2/video/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/video/l;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 182
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/video/l;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method private synthetic c(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->b:Lcom/google/android/exoplayer2/video/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/l;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/l;->b(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method private synthetic d(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->b:Lcom/google/android/exoplayer2/video/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/l;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/video/l;->a(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method public static synthetic lambda$1dakQsVJrxBxnVimx8L-pbYFI5s(Lcom/google/android/exoplayer2/video/l$a;IIIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/l$a;->b(IIIF)V

    return-void
.end method

.method public static synthetic lambda$4-kW5KbqHloIpGJpbTvWfU8bmng(Lcom/google/android/exoplayer2/video/l$a;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/l$a;->b(Landroid/view/Surface;)V

    return-void
.end method

.method public static synthetic lambda$LriKX-Xu7ZL6fNYk3zq_mYHr0cQ(Lcom/google/android/exoplayer2/video/l$a;Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/l$a;->d(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method public static synthetic lambda$Wv-JanVgqbm1_P-1gSL7vpyblTM(Lcom/google/android/exoplayer2/video/l$a;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/l$a;->b(IJ)V

    return-void
.end method

.method public static synthetic lambda$YRfxFog65ggrpRGRanlz-MEi1yI(Lcom/google/android/exoplayer2/video/l$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/l$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$j4HyUiKVbiKHo-jXc53-ttljZxA(Lcom/google/android/exoplayer2/video/l$a;Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/l$a;->c(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method public static synthetic lambda$jmC1uMqQoX3auKYODh_v1YzyACY(Lcom/google/android/exoplayer2/video/l$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/video/l$a;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic lambda$lFX32SpxAsBjv02OV1Pog9PUreo(Lcom/google/android/exoplayer2/video/l$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/video/l$a;->b(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public static synthetic lambda$v0ivuvdiizSkEuqO-2ShF240sGU(Lcom/google/android/exoplayer2/video/l$a;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/l$a;->b(JI)V

    return-void
.end method


# virtual methods
.method public final a(IIIF)V
    .locals 8

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 223
    new-instance v7, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$1dakQsVJrxBxnVimx8L-pbYFI5s;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$1dakQsVJrxBxnVimx8L-pbYFI5s;-><init>(Lcom/google/android/exoplayer2/video/l$a;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 202
    new-instance v1, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$Wv-JanVgqbm1_P-1gSL7vpyblTM;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$Wv-JanVgqbm1_P-1gSL7vpyblTM;-><init>(Lcom/google/android/exoplayer2/video/l$a;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(JI)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 209
    new-instance v1, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$v0ivuvdiizSkEuqO-2ShF240sGU;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$v0ivuvdiizSkEuqO-2ShF240sGU;-><init>(Lcom/google/android/exoplayer2/video/l$a;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 234
    new-instance v1, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$4-kW5KbqHloIpGJpbTvWfU8bmng;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$4-kW5KbqHloIpGJpbTvWfU8bmng;-><init>(Lcom/google/android/exoplayer2/video/l$a;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 194
    new-instance v1, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$lFX32SpxAsBjv02OV1Pog9PUreo;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$lFX32SpxAsBjv02OV1Pog9PUreo;-><init>(Lcom/google/android/exoplayer2/video/l$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 171
    new-instance v1, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$LriKX-Xu7ZL6fNYk3zq_mYHr0cQ;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$LriKX-Xu7ZL6fNYk3zq_mYHr0cQ;-><init>(Lcom/google/android/exoplayer2/video/l$a;Lcom/google/android/exoplayer2/decoder/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 241
    new-instance v1, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$YRfxFog65ggrpRGRanlz-MEi1yI;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$YRfxFog65ggrpRGRanlz-MEi1yI;-><init>(Lcom/google/android/exoplayer2/video/l$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 9

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 179
    new-instance v8, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$jmC1uMqQoX3auKYODh_v1YzyACY;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$jmC1uMqQoX3auKYODh_v1YzyACY;-><init>(Lcom/google/android/exoplayer2/video/l$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/l$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 249
    new-instance v1, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$j4HyUiKVbiKHo-jXc53-ttljZxA;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/-$$Lambda$l$a$j4HyUiKVbiKHo-jXc53-ttljZxA;-><init>(Lcom/google/android/exoplayer2/video/l$a;Lcom/google/android/exoplayer2/decoder/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
