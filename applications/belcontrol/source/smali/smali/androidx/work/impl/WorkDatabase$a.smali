.class public final Landroidx/work/impl/WorkDatabase$a;
.super Lz00$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase;->t()Lz00$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz00$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ln10;)V
    .locals 1

    invoke-super {p0, p1}, Lz00$b;->b(Ln10;)V

    invoke-interface {p1}, Ln10;->beginTransaction()V

    :try_start_0
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->v()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ln10;->c(Ljava/lang/String;)V

    invoke-interface {p1}, Ln10;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ln10;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ln10;->endTransaction()V

    throw v0
.end method
