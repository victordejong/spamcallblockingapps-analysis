.class public final Lil$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:[Ltl;

.field public b:Landroidx/media2/exoplayer/external/Format;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Ltl;

    iput-object p1, p0, Lil$c;->a:[Ltl;

    const/4 p1, 0x0

    iput p1, p0, Lil$c;->d:I

    return-void
.end method
