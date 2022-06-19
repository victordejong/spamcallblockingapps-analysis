.class public Lev$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lev$j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev;->y0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lev;


# direct methods
.method public constructor <init>(Lev;I)V
    .locals 0

    iput-object p1, p0, Lev$k;->b:Lev;

    iput p2, p0, Lev$k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 2

    iget-object v0, p0, Lev$k;->b:Lev;

    iget v1, p0, Lev$k;->a:I

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer$a;->onPlayerStateChanged(Landroidx/media2/common/SessionPlayer;I)V

    return-void
.end method
