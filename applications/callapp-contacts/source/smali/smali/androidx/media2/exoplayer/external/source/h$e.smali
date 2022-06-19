.class final Landroidx/media2/exoplayer/external/source/h$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Landroidx/media2/exoplayer/external/source/h$c;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Landroidx/media2/exoplayer/external/source/h$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Landroidx/media2/exoplayer/external/source/h$c;",
            ")V"
        }
    .end annotation

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    iput p1, p0, Landroidx/media2/exoplayer/external/source/h$e;->a:I

    .line 883
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/h$e;->b:Ljava/lang/Object;

    .line 884
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/h$e;->c:Landroidx/media2/exoplayer/external/source/h$c;

    return-void
.end method
