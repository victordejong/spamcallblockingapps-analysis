.class final Landroidx/media2/session/i$b$15;
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
.field final synthetic a:Landroidx/media2/session/SessionCommandGroup;

.field final synthetic b:Landroidx/media2/session/i$b;


# direct methods
.method constructor <init>(Landroidx/media2/session/i$b;Landroidx/media2/session/SessionCommandGroup;)V
    .locals 0

    .line 1116
    iput-object p1, p0, Landroidx/media2/session/i$b$15;->b:Landroidx/media2/session/i$b;

    iput-object p2, p0, Landroidx/media2/session/i$b$15;->a:Landroidx/media2/session/SessionCommandGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media2/session/MediaController$a;)V
    .locals 1

    .line 1119
    iget-object v0, p0, Landroidx/media2/session/i$b$15;->a:Landroidx/media2/session/SessionCommandGroup;

    invoke-virtual {p1, v0}, Landroidx/media2/session/MediaController$a;->a(Landroidx/media2/session/SessionCommandGroup;)V

    return-void
.end method
