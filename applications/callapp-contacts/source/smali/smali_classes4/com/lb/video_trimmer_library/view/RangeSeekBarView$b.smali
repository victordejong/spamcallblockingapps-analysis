.class public final enum Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lb/video_trimmer_library/view/RangeSeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/lb/video_trimmer_library/view/RangeSeekBarView$ThumbType;",
        "",
        "index",
        "",
        "(Ljava/lang/String;II)V",
        "getIndex",
        "()I",
        "LEFT",
        "RIGHT",
        "video_trimmer_library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

.field public static final enum LEFT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

.field public static final enum RIGHT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    new-instance v1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    const-string v2, "LEFT"

    const/4 v3, 0x0

    .line 41
    invoke-direct {v1, v2, v3, v3}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->LEFT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    const-string v2, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->RIGHT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->$VALUES:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;
    .locals 1

    const-class v0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    return-object p0
.end method

.method public static values()[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;
    .locals 1

    sget-object v0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->$VALUES:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    invoke-virtual {v0}, [Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    return-object v0
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->index:I

    return v0
.end method
