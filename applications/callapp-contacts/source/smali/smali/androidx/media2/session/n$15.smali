.class final Landroidx/media2/session/n$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n;->l()Landroidx/media2/common/MediaMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/session/n$c<",
        "Landroidx/media2/common/MediaMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/n;


# direct methods
.method constructor <init>(Landroidx/media2/session/n;)V
    .locals 0

    .line 712
    iput-object p1, p0, Landroidx/media2/session/n$15;->a:Landroidx/media2/session/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroidx/media2/common/SessionPlayer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1715
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->o()Landroidx/media2/common/MediaMetadata;

    move-result-object p1

    return-object p1
.end method
