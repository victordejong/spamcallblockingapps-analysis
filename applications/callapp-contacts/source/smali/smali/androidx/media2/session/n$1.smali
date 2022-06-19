.class final Landroidx/media2/session/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/media2/session/n;


# direct methods
.method constructor <init>(Landroidx/media2/session/n;I)V
    .locals 0

    .line 287
    iput-object p1, p0, Landroidx/media2/session/n$1;->b:Landroidx/media2/session/n;

    iput p2, p0, Landroidx/media2/session/n$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 290
    iget-object v0, p0, Landroidx/media2/session/n$1;->b:Landroidx/media2/session/n;

    invoke-virtual {v0}, Landroidx/media2/session/n;->z()Landroidx/media2/session/MediaSession;

    return-void
.end method
