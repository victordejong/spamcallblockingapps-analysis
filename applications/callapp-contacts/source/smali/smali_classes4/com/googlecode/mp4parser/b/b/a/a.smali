.class public Lcom/googlecode/mp4parser/b/b/a/a;
.super Lcom/googlecode/mp4parser/b/b/a/b;
.source "SourceFile"


# annotations
.annotation runtime Lcom/googlecode/mp4parser/b/b/a/g;
    a = {
        0x5
    }
    b = 0x40
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/b/b/a/a$a;,
        Lcom/googlecode/mp4parser/b/b/a/a$b;
    }
.end annotation


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Z

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:Z

.field W:[B

.field X:Z

.field public c:Lcom/googlecode/mp4parser/b/b/a/a$a;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->a:Ljava/util/Map;

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    .line 290
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->a:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x17700

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->a:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x15888

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->a:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0xfa00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->a:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0xbb80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->a:Ljava/util/Map;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0xac44

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->a:Ljava/util/Map;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x7d00

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->a:Ljava/util/Map;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x5dc0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->a:Ljava/util/Map;

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x5622

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->a:Ljava/util/Map;

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x3e80

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->a:Ljava/util/Map;

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x2ee0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->a:Ljava/util/Map;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x2b11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->a:Ljava/util/Map;

    const/16 v11, 0xb

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x1f40

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const-string v12, "AAC main"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const-string v1, "AAC LC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const-string v1, "AAC SSR"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const-string v1, "AAC LTP"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const-string v1, "SBR"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const-string v1, "AAC Scalable"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const-string v1, "TwinVQ"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const-string v1, "CELP"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const-string v1, "HVXC"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const-string v1, "(reserved)"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TTSI"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Main synthetic"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Wavetable synthesis"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "General MIDI"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Algorithmic Synthesis and Audio FX"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ER AAC LC"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER AAC LTP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER AAC Scalable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER TwinVQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER BSAC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER AAC LD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER CELP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER HVXC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER HILN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER Parametric"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SSC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MPEG Surround"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(escape)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Layer-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Layer-2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Layer-3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ALS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SLS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SLS non-core"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER AAC ELD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SMR Simple"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SMR Main"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 520
    invoke-direct {p0}, Lcom/googlecode/mp4parser/b/b/a/b;-><init>()V

    const/4 v0, -0x1

    .line 479
    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    .line 486
    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->s:I

    .line 487
    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->t:I

    .line 488
    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->u:I

    const/4 v0, 0x0

    .line 524
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->X:Z

    const/4 v0, 0x5

    .line 521
    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->Y:I

    return-void
.end method

.method private static a(Lcom/googlecode/mp4parser/b/b/a/c;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1007
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    .line 1009
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result p0

    add-int/lit8 v0, p0, 0x20

    :cond_0
    return v0
.end method

.method public static a(ILcom/googlecode/mp4parser/b/b/a/d;)V
    .locals 3

    const/4 v0, 0x5

    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v2, 0x1f

    .line 999
    invoke-virtual {p1, v2, v0}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    sub-int/2addr p0, v1

    const/4 v0, 0x6

    .line 1000
    invoke-virtual {p1, p0, v0}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    return-void

    .line 1002
    :cond_0
    invoke-virtual {p1, p0, v0}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    return-void
.end method

.method private c()I
    .locals 5

    .line 717
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->w:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    add-int/2addr v0, v1

    .line 721
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->h:I

    if-eqz v2, :cond_8

    .line 725
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    const/4 v3, 0x6

    const/16 v4, 0x14

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x3

    .line 728
    :cond_2
    iget v3, p0, Lcom/googlecode/mp4parser/b/b/a/a;->y:I

    if-ne v3, v1, :cond_7

    const/16 v3, 0x16

    if-ne v2, v3, :cond_3

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xb

    :cond_3
    const/16 v3, 0x11

    if-eq v2, v3, :cond_4

    const/16 v3, 0x13

    if-eq v2, v3, :cond_4

    if-eq v2, v4, :cond_4

    const/16 v3, 0x17

    if-ne v2, v3, :cond_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    add-int/2addr v0, v1

    :cond_5
    add-int/2addr v0, v1

    .line 740
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->F:I

    if-eq v2, v1, :cond_6

    goto :goto_1

    .line 741
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_1
    return v0

    .line 722
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t parse program_config_element yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 7

    .line 749
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->e:I

    const/16 v1, 0x1e

    const/4 v2, 0x5

    if-le v0, v1, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    add-int/lit8 v0, v0, 0x4

    .line 753
    iget v3, p0, Lcom/googlecode/mp4parser/b/b/a/a;->f:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x18

    :cond_1
    add-int/lit8 v0, v0, 0x4

    .line 757
    iget v3, p0, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    if-eq v3, v2, :cond_2

    const/16 v5, 0x1d

    if-ne v3, v5, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x4

    .line 760
    iget v5, p0, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    if-ne v5, v4, :cond_3

    add-int/lit8 v0, v0, 0x18

    :cond_3
    const/16 v5, 0x16

    if-ne v3, v5, :cond_4

    add-int/lit8 v0, v0, 0x4

    .line 771
    :cond_4
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/b/b/a/a;->G:Z

    if-eqz v3, :cond_5

    .line 772
    invoke-direct {p0}, Lcom/googlecode/mp4parser/b/b/a/a;->c()I

    move-result v3

    add-int/2addr v0, v3

    .line 774
    :cond_5
    iget v3, p0, Lcom/googlecode/mp4parser/b/b/a/a;->u:I

    if-ltz v3, :cond_a

    add-int/lit8 v0, v0, 0xb

    const/16 v6, 0x2b7

    if-ne v3, v6, :cond_a

    add-int/lit8 v0, v0, 0x5

    .line 778
    iget v3, p0, Lcom/googlecode/mp4parser/b/b/a/a;->i:I

    if-le v3, v1, :cond_6

    add-int/lit8 v0, v0, 0x6

    :cond_6
    if-ne v3, v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 783
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->j:Z

    if-eqz v1, :cond_8

    add-int/lit8 v0, v0, 0x4

    .line 785
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    if-ne v1, v4, :cond_7

    add-int/lit8 v0, v0, 0x18

    .line 788
    :cond_7
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->t:I

    if-ltz v1, :cond_8

    add-int/lit8 v0, v0, 0xb

    const/16 v2, 0x548

    if-ne v1, v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    if-ne v3, v5, :cond_a

    add-int/lit8 v0, v0, 0x1

    .line 798
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->j:Z

    if-eqz v1, :cond_9

    add-int/lit8 v0, v0, 0x4

    .line 800
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    if-ne v1, v4, :cond_9

    add-int/lit8 v0, v0, 0x18

    :cond_9
    add-int/lit8 v0, v0, 0x4

    :cond_a
    int-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    .line 808
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 528
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->X:Z

    .line 529
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 530
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->Z:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 531
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget v3, p0, Lcom/googlecode/mp4parser/b/b/a/a;->Z:I

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 534
    iget p1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->Z:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->W:[B

    .line 535
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 536
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 538
    new-instance p1, Lcom/googlecode/mp4parser/b/b/a/c;

    invoke-direct {p1, v1}, Lcom/googlecode/mp4parser/b/b/a/c;-><init>(Ljava/nio/ByteBuffer;)V

    .line 539
    invoke-static {p1}, Lcom/googlecode/mp4parser/b/b/a/a;->a(Lcom/googlecode/mp4parser/b/b/a/c;)I

    move-result v1

    iput v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    iput v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->e:I

    const/4 v1, 0x4

    .line 540
    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->f:I

    const/16 v3, 0x18

    const/16 v4, 0xf

    if-ne v2, v4, :cond_0

    .line 543
    invoke-virtual {p1, v3}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->g:I

    .line 546
    :cond_0
    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->h:I

    .line 548
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    const/16 v5, 0x1d

    const/16 v6, 0x16

    const/4 v7, 0x5

    if-eq v2, v7, :cond_2

    if-ne v2, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 562
    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->i:I

    goto :goto_1

    .line 550
    :cond_2
    :goto_0
    iput v7, p0, Lcom/googlecode/mp4parser/b/b/a/a;->i:I

    .line 551
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->j:Z

    if-ne v2, v5, :cond_3

    .line 553
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->k:Z

    .line 555
    :cond_3
    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    if-ne v2, v4, :cond_4

    .line 557
    invoke-virtual {p1, v3}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->m:I

    .line 558
    :cond_4
    invoke-static {p1}, Lcom/googlecode/mp4parser/b/b/a/a;->a(Lcom/googlecode/mp4parser/b/b/a/c;)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    if-ne v2, v6, :cond_5

    .line 560
    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->n:I

    .line 565
    :cond_5
    :goto_1
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    const/16 v5, 0xc

    const/16 v8, 0x11

    const/16 v9, 0xb

    const/4 v10, 0x3

    const/4 v11, 0x2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 647
    :pswitch_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse SymbolicMusicSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 643
    :pswitch_2
    new-instance v2, Lcom/googlecode/mp4parser/b/b/a/a$a;

    iget v12, p0, Lcom/googlecode/mp4parser/b/b/a/a;->h:I

    invoke-direct {v2, p0, v12, p1}, Lcom/googlecode/mp4parser/b/b/a/a$a;-><init>(Lcom/googlecode/mp4parser/b/b/a/a;ILcom/googlecode/mp4parser/b/b/a/c;)V

    iput-object v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->c:Lcom/googlecode/mp4parser/b/b/a/a$a;

    goto/16 :goto_3

    .line 639
    :pswitch_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse SLSSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 633
    :pswitch_4
    invoke-virtual {p1, v7}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->p:I

    .line 634
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse ALSSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 629
    :pswitch_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse DSTSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 625
    :pswitch_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse MPEG_1_2_SpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 618
    :pswitch_7
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->o:I

    .line 619
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse SpatialSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 614
    :pswitch_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse SSCSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2099
    :pswitch_9
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->H:I

    if-ne v2, v0, :cond_8

    .line 2124
    invoke-virtual {p1, v11}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->I:I

    if-eq v2, v0, :cond_6

    .line 2149
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->K:I

    .line 2150
    invoke-virtual {p1, v11}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->L:I

    .line 2151
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->M:I

    if-ne v2, v0, :cond_6

    .line 2154
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->N:I

    .line 2129
    :cond_6
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->I:I

    if-eqz v2, :cond_7

    .line 2169
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->O:I

    const/16 v2, 0x8

    .line 2170
    invoke-virtual {p1, v2}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->P:I

    .line 2171
    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->Q:I

    .line 2172
    invoke-virtual {p1, v5}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->R:I

    .line 2173
    invoke-virtual {p1, v11}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->S:I

    .line 2133
    :cond_7
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->J:I

    .line 2134
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->V:Z

    goto/16 :goto_3

    .line 2186
    :cond_8
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->T:I

    if-ne v2, v0, :cond_12

    .line 2188
    invoke-virtual {p1, v11}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->U:I

    goto/16 :goto_3

    .line 605
    :pswitch_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse ErrorResilientHvxcSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 601
    :pswitch_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse ErrorResilientCelpSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 597
    :pswitch_c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse StructuredAudioSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 590
    :pswitch_d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse TTSSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 586
    :pswitch_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse HvxcSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 582
    :pswitch_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse CelpSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 578
    :pswitch_10
    iget v12, p0, Lcom/googlecode/mp4parser/b/b/a/a;->h:I

    .line 2019
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v13

    iput v13, p0, Lcom/googlecode/mp4parser/b/b/a/a;->v:I

    .line 2020
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v13

    iput v13, p0, Lcom/googlecode/mp4parser/b/b/a/a;->w:I

    if-ne v13, v0, :cond_9

    const/16 v13, 0xe

    .line 2022
    invoke-virtual {p1, v13}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v13

    iput v13, p0, Lcom/googlecode/mp4parser/b/b/a/a;->x:I

    .line 2024
    :cond_9
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v13

    iput v13, p0, Lcom/googlecode/mp4parser/b/b/a/a;->y:I

    if-eqz v12, :cond_11

    const/4 v12, 0x6

    const/16 v13, 0x14

    if-eq v2, v12, :cond_a

    if-ne v2, v13, :cond_b

    .line 2030
    :cond_a
    invoke-virtual {p1, v10}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v12

    iput v12, p0, Lcom/googlecode/mp4parser/b/b/a/a;->z:I

    .line 2032
    :cond_b
    iget v12, p0, Lcom/googlecode/mp4parser/b/b/a/a;->y:I

    if-ne v12, v0, :cond_10

    if-ne v2, v6, :cond_c

    .line 2034
    invoke-virtual {p1, v7}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v12

    iput v12, p0, Lcom/googlecode/mp4parser/b/b/a/a;->A:I

    .line 2035
    invoke-virtual {p1, v9}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v12

    iput v12, p0, Lcom/googlecode/mp4parser/b/b/a/a;->B:I

    :cond_c
    if-eq v2, v8, :cond_d

    const/16 v12, 0x13

    if-eq v2, v12, :cond_d

    if-eq v2, v13, :cond_d

    const/16 v12, 0x17

    if-ne v2, v12, :cond_e

    .line 2039
    :cond_d
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/b/b/a/c;->a()Z

    move-result v2

    iput-boolean v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->C:Z

    .line 2040
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/b/b/a/c;->a()Z

    move-result v2

    iput-boolean v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->D:Z

    .line 2041
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/b/b/a/c;->a()Z

    move-result v2

    iput-boolean v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->E:Z

    .line 2043
    :cond_e
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->F:I

    if-eq v2, v0, :cond_f

    goto :goto_2

    .line 2045
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2049
    :cond_10
    :goto_2
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->G:Z

    goto :goto_3

    .line 2026
    :cond_11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse program_config_element yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 654
    :cond_12
    :goto_3
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    if-eq v2, v8, :cond_13

    const/16 v8, 0x27

    if-eq v2, v8, :cond_13

    packed-switch v2, :pswitch_data_1

    goto :goto_4

    .line 666
    :cond_13
    :pswitch_11
    invoke-virtual {p1, v11}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->q:I

    if-eq v2, v11, :cond_1a

    if-eq v2, v10, :cond_1a

    if-ne v2, v10, :cond_15

    .line 672
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->r:I

    if-eqz v0, :cond_14

    goto :goto_4

    .line 675
    :cond_14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 680
    :cond_15
    :goto_4
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->i:I

    if-eq v0, v7, :cond_19

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/b/b/a/c;->b()I

    move-result v0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_19

    .line 681
    invoke-virtual {p1, v9}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->s:I

    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->u:I

    const/16 v2, 0x2b7

    if-ne v0, v2, :cond_19

    .line 683
    invoke-static {p1}, Lcom/googlecode/mp4parser/b/b/a/a;->a(Lcom/googlecode/mp4parser/b/b/a/c;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->i:I

    if-ne v0, v7, :cond_17

    .line 685
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/b/b/a/c;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->j:Z

    if-eqz v0, :cond_17

    .line 687
    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    if-ne v0, v4, :cond_16

    .line 689
    invoke-virtual {p1, v3}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->m:I

    .line 691
    :cond_16
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/b/b/a/c;->b()I

    move-result v0

    if-lt v0, v5, :cond_17

    .line 692
    invoke-virtual {p1, v9}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->s:I

    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->t:I

    const/16 v2, 0x548

    if-ne v0, v2, :cond_17

    .line 694
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/b/b/a/c;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->k:Z

    .line 699
    :cond_17
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->i:I

    if-ne v0, v6, :cond_19

    .line 700
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/b/b/a/c;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->j:Z

    if-eqz v0, :cond_18

    .line 702
    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    if-ne v0, v4, :cond_18

    .line 704
    invoke-virtual {p1, v3}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->m:I

    .line 707
    :cond_18
    invoke-virtual {p1, v1}, Lcom/googlecode/mp4parser/b/b/a/c;->a(I)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->n:I

    :cond_19
    return-void

    .line 668
    :cond_1a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "can\'t parse ErrorProtectionSpecificConfig yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_0
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_10
        :pswitch_0
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    .line 1296
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    .line 1300
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/b/b/a/a;

    .line 1302
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->D:Z

    iget-boolean v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->D:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 1305
    :cond_2
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->C:Z

    iget-boolean v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->C:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 1308
    :cond_3
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->E:Z

    iget-boolean v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->E:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 1311
    :cond_4
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    if-eq v2, v3, :cond_5

    return v1

    .line 1314
    :cond_5
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->h:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->h:I

    if-eq v2, v3, :cond_6

    return v1

    .line 1317
    :cond_6
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->x:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->x:I

    if-eq v2, v3, :cond_7

    return v1

    .line 1320
    :cond_7
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->w:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->w:I

    if-eq v2, v3, :cond_8

    return v1

    .line 1323
    :cond_8
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->r:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->r:I

    if-eq v2, v3, :cond_9

    return v1

    .line 1326
    :cond_9
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->q:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->q:I

    if-eq v2, v3, :cond_a

    return v1

    .line 1329
    :cond_a
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->M:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->M:I

    if-eq v2, v3, :cond_b

    return v1

    .line 1332
    :cond_b
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->i:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->i:I

    if-eq v2, v3, :cond_c

    return v1

    .line 1335
    :cond_c
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->n:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->n:I

    if-eq v2, v3, :cond_d

    return v1

    .line 1338
    :cond_d
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->y:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->y:I

    if-eq v2, v3, :cond_e

    return v1

    .line 1341
    :cond_e
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->F:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->F:I

    if-eq v2, v3, :cond_f

    return v1

    .line 1344
    :cond_f
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->m:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->m:I

    if-eq v2, v3, :cond_10

    return v1

    .line 1347
    :cond_10
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    if-eq v2, v3, :cond_11

    return v1

    .line 1350
    :cond_11
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->p:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->p:I

    if-eq v2, v3, :cond_12

    return v1

    .line 1353
    :cond_12
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->v:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->v:I

    if-eq v2, v3, :cond_13

    return v1

    .line 1356
    :cond_13
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->G:Z

    iget-boolean v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->G:Z

    if-eq v2, v3, :cond_14

    return v1

    .line 1359
    :cond_14
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->S:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->S:I

    if-eq v2, v3, :cond_15

    return v1

    .line 1362
    :cond_15
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->T:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->T:I

    if-eq v2, v3, :cond_16

    return v1

    .line 1365
    :cond_16
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->U:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->U:I

    if-eq v2, v3, :cond_17

    return v1

    .line 1368
    :cond_17
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->R:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->R:I

    if-eq v2, v3, :cond_18

    return v1

    .line 1371
    :cond_18
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->P:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->P:I

    if-eq v2, v3, :cond_19

    return v1

    .line 1374
    :cond_19
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->O:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->O:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 1377
    :cond_1a
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->Q:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->Q:I

    if-eq v2, v3, :cond_1b

    return v1

    .line 1380
    :cond_1b
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->L:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->L:I

    if-eq v2, v3, :cond_1c

    return v1

    .line 1383
    :cond_1c
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->K:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->K:I

    if-eq v2, v3, :cond_1d

    return v1

    .line 1386
    :cond_1d
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->H:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->H:I

    if-eq v2, v3, :cond_1e

    return v1

    .line 1389
    :cond_1e
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->z:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->z:I

    if-eq v2, v3, :cond_1f

    return v1

    .line 1392
    :cond_1f
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->B:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->B:I

    if-eq v2, v3, :cond_20

    return v1

    .line 1395
    :cond_20
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->A:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->A:I

    if-eq v2, v3, :cond_21

    return v1

    .line 1398
    :cond_21
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->J:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->J:I

    if-eq v2, v3, :cond_22

    return v1

    .line 1401
    :cond_22
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->I:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->I:I

    if-eq v2, v3, :cond_23

    return v1

    .line 1404
    :cond_23
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->V:Z

    iget-boolean v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->V:Z

    if-eq v2, v3, :cond_24

    return v1

    .line 1407
    :cond_24
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->k:Z

    iget-boolean v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->k:Z

    if-eq v2, v3, :cond_25

    return v1

    .line 1410
    :cond_25
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->o:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->o:I

    if-eq v2, v3, :cond_26

    return v1

    .line 1413
    :cond_26
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->g:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->g:I

    if-eq v2, v3, :cond_27

    return v1

    .line 1416
    :cond_27
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->f:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->f:I

    if-eq v2, v3, :cond_28

    return v1

    .line 1419
    :cond_28
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->j:Z

    iget-boolean v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->j:Z

    if-eq v2, v3, :cond_29

    return v1

    .line 1422
    :cond_29
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->s:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->s:I

    if-eq v2, v3, :cond_2a

    return v1

    .line 1425
    :cond_2a
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->N:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/a/a;->N:I

    if-eq v2, v3, :cond_2b

    return v1

    .line 1428
    :cond_2b
    iget-object v2, p0, Lcom/googlecode/mp4parser/b/b/a/a;->W:[B

    iget-object p1, p1, Lcom/googlecode/mp4parser/b/b/a/a;->W:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_2c

    return v1

    :cond_2c
    return v0

    :cond_2d
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1437
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/a;->W:[B

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 1438
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1439
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1440
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1441
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1442
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1443
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->j:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1444
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->k:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1445
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1446
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1447
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1448
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->o:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1449
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->p:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1450
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->q:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1451
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->r:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1452
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->s:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1453
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->v:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1454
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->w:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1455
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->x:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1456
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->y:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1457
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->z:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1458
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->A:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1459
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->B:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1460
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->C:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1461
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->D:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1462
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->E:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1463
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->F:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1464
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->G:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1465
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->H:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1466
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->I:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1467
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->J:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1468
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->K:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1469
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->L:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1470
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->M:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1471
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->N:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1472
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->O:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1473
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->P:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1474
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->Q:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1475
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->R:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1476
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->S:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1477
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->T:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1478
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->U:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1479
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->V:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioSpecificConfig"

    .line 1219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{configBytes="

    .line 1220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->W:[B

    invoke-static {v1}, Lcom/b/a/c;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audioObjectType="

    .line 1221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    iget v3, p0, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", samplingFrequencyIndex="

    .line 1222
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/googlecode/mp4parser/b/b/a/a;->f:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/googlecode/mp4parser/b/b/a/a;->a:Ljava/util/Map;

    iget v4, p0, Lcom/googlecode/mp4parser/b/b/a/a;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", samplingFrequency="

    .line 1223
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/googlecode/mp4parser/b/b/a/a;->g:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", channelConfiguration="

    .line 1224
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/googlecode/mp4parser/b/b/a/a;->h:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1225
    iget v3, p0, Lcom/googlecode/mp4parser/b/b/a/a;->i:I

    if-lez v3, :cond_0

    const-string v3, ", extensionAudioObjectType="

    .line 1226
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/googlecode/mp4parser/b/b/a/a;->i:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/googlecode/mp4parser/b/b/a/a;->b:Ljava/util/Map;

    iget v4, p0, Lcom/googlecode/mp4parser/b/b/a/a;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", sbrPresentFlag="

    .line 1227
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/googlecode/mp4parser/b/b/a/a;->j:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", psPresentFlag="

    .line 1228
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/googlecode/mp4parser/b/b/a/a;->k:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", extensionSamplingFrequencyIndex="

    .line 1229
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/googlecode/mp4parser/b/b/a/a;->a:Ljava/util/Map;

    iget v3, p0, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extensionSamplingFrequency="

    .line 1230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extensionChannelConfiguration="

    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", syncExtensionType="

    .line 1237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1238
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->G:Z

    if-eqz v1, :cond_1

    const-string v1, ", frameLengthFlag="

    .line 1239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dependsOnCoreCoder="

    .line 1240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", coreCoderDelay="

    .line 1241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extensionFlag="

    .line 1242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layerNr="

    .line 1243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numOfSubFrame="

    .line 1244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layer_length="

    .line 1245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aacSectionDataResilienceFlag="

    .line 1246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->C:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", aacScalefactorDataResilienceFlag="

    .line 1247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->D:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", aacSpectralDataResilienceFlag="

    .line 1248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->E:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", extensionFlag3="

    .line 1249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1251
    :cond_1
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->V:Z

    if-eqz v1, :cond_2

    const-string v1, ", isBaseLayer="

    .line 1252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paraMode="

    .line 1253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paraExtensionFlag="

    .line 1254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->J:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hvxcVarMode="

    .line 1255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hvxcRateMode="

    .line 1256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", erHvxcExtensionFlag="

    .line 1257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->M:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", var_ScalableFlag="

    .line 1258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->N:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnQuantMode="

    .line 1259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->O:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnMaxNumLine="

    .line 1260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnSampleRateCode="

    .line 1261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->Q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnFrameLength="

    .line 1262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->R:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnContMode="

    .line 1263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->S:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnEnhaLayer="

    .line 1264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->T:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hilnEnhaQuantMode="

    .line 1265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/a;->U:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    .line 1267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
