.class public final Ltv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmh;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lgi;

.field public final c:Luv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgi;Luv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv;->a:Landroid/content/Context;

    iput-object p2, p0, Ltv;->b:Lgi;

    iput-object p3, p0, Ltv;->c:Luv;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;Lcv;Lfi;Llr;Lio;Lmj;)[Ljh;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcv;",
            "Lfi;",
            "Llr;",
            "Lio;",
            "Lmj<",
            "Lqj;",
            ">;)[",
            "Ljh;"
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x4

    new-array v1, v1, [Ljh;

    new-instance v12, Lru;

    iget-object v3, v0, Ltv;->a:Landroid/content/Context;

    sget-object v13, Lyn;->a:Lyn;

    const-wide/16 v5, 0x1388

    const/4 v8, 0x0

    const/16 v11, 0x32

    move-object v2, v12

    move-object v4, v13

    move-object/from16 v7, p6

    move-object v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v2 .. v11}, Lru;-><init>(Landroid/content/Context;Lyn;JLmj;ZLandroid/os/Handler;Lcv;I)V

    const/4 v2, 0x0

    aput-object v12, v1, v2

    new-instance v2, Lpi;

    iget-object v5, v0, Ltv;->a:Landroid/content/Context;

    iget-object v11, v0, Ltv;->b:Lgi;

    move-object v4, v2

    move-object v6, v13

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v11}, Lpi;-><init>(Landroid/content/Context;Lyn;Lmj;ZLandroid/os/Handler;Lfi;Lgi;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, v0, Ltv;->c:Luv;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Ljo;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lsv;

    invoke-direct {v4}, Lsv;-><init>()V

    move-object/from16 v5, p5

    invoke-direct {v2, v5, v3, v4}, Ljo;-><init>(Lio;Landroid/os/Looper;Lgo;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    return-object v1
.end method
