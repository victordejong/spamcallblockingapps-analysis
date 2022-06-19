.class final Landroidx/media2/session/n$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n;->i()Landroidx/media2/common/VideoSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/session/n$c<",
        "Landroidx/media2/common/VideoSize;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/n;


# direct methods
.method constructor <init>(Landroidx/media2/session/n;)V
    .locals 0

    .line 889
    iput-object p1, p0, Landroidx/media2/session/n$28;->a:Landroidx/media2/session/n;

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

    .line 1892
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->j()Landroidx/media2/common/VideoSize;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/s;->a(Landroidx/media2/common/VideoSize;)Landroidx/media2/common/VideoSize;

    move-result-object p1

    return-object p1
.end method
