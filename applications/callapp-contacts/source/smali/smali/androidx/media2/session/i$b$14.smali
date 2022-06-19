.class final Landroidx/media2/session/i$b$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/MediaController$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/i$b;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroidx/media2/session/i$b;


# direct methods
.method constructor <init>(Landroidx/media2/session/i$b;J)V
    .locals 0

    .line 1106
    iput-object p1, p0, Landroidx/media2/session/i$b$14;->b:Landroidx/media2/session/i$b;

    iput-wide p2, p0, Landroidx/media2/session/i$b$14;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media2/session/MediaController$a;)V
    .locals 2

    .line 1109
    iget-wide v0, p0, Landroidx/media2/session/i$b$14;->a:J

    invoke-virtual {p1, v0, v1}, Landroidx/media2/session/MediaController$a;->a(J)V

    return-void
.end method
