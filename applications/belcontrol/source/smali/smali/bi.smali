.class public final synthetic Lbi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lfi$a;

.field public final b:Landroidx/media2/exoplayer/external/Format;


# direct methods
.method public constructor <init>(Lfi$a;Landroidx/media2/exoplayer/external/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbi;->a:Lfi$a;

    iput-object p2, p0, Lbi;->b:Landroidx/media2/exoplayer/external/Format;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbi;->a:Lfi$a;

    iget-object v1, p0, Lbi;->b:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v0, v1}, Lfi$a;->l(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method
