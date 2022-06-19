.class final Landroidx/media2/session/h$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/MediaController$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Landroidx/media2/session/h;


# direct methods
.method constructor <init>(Landroidx/media2/session/h;Ljava/util/List;I)V
    .locals 0

    .line 1328
    iput-object p1, p0, Landroidx/media2/session/h$31;->c:Landroidx/media2/session/h;

    iput-object p2, p0, Landroidx/media2/session/h$31;->a:Ljava/util/List;

    iput p3, p0, Landroidx/media2/session/h$31;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media2/session/MediaController$a;)V
    .locals 2

    .line 1332
    new-instance p1, Landroidx/media2/session/SessionResult;

    const/4 v0, -0x6

    invoke-direct {p1, v0}, Landroidx/media2/session/SessionResult;-><init>(I)V

    .line 1333
    iget-object v0, p0, Landroidx/media2/session/h$31;->c:Landroidx/media2/session/h;

    iget v1, p0, Landroidx/media2/session/h$31;->b:I

    invoke-virtual {v0, v1, p1}, Landroidx/media2/session/h;->a(ILandroidx/media2/session/SessionResult;)V

    return-void
.end method
