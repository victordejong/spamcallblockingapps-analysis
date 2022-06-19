.class final Landroidx/media2/session/n$41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:F

.field final synthetic d:Landroidx/media2/session/n;


# direct methods
.method constructor <init>(Landroidx/media2/session/n;JJF)V
    .locals 0

    .line 1205
    iput-object p1, p0, Landroidx/media2/session/n$41;->d:Landroidx/media2/session/n;

    iput-wide p2, p0, Landroidx/media2/session/n$41;->a:J

    iput-wide p4, p0, Landroidx/media2/session/n$41;->b:J

    iput p6, p0, Landroidx/media2/session/n$41;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$a;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1208
    iget-wide v2, p0, Landroidx/media2/session/n$41;->a:J

    iget-wide v4, p0, Landroidx/media2/session/n$41;->b:J

    iget v6, p0, Landroidx/media2/session/n$41;->c:F

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/MediaSession$a;->a(IJJF)V

    return-void
.end method
