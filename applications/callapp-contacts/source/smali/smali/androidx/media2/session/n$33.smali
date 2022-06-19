.class final Landroidx/media2/session/n$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/session/n$c<",
        "Landroidx/media2/common/SessionPlayer$TrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/media2/session/n;


# direct methods
.method constructor <init>(Landroidx/media2/session/n;I)V
    .locals 0

    .line 941
    iput-object p1, p0, Landroidx/media2/session/n$33;->b:Landroidx/media2/session/n;

    iput p2, p0, Landroidx/media2/session/n$33;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroidx/media2/common/SessionPlayer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1944
    iget v0, p0, Landroidx/media2/session/n$33;->a:I

    invoke-virtual {p1, v0}, Landroidx/media2/common/SessionPlayer;->e(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/s;->a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    return-object p1
.end method
