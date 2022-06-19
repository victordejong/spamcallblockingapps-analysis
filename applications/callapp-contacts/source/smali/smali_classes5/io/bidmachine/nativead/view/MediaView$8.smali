.class final synthetic Lio/bidmachine/nativead/view/MediaView$8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/view/MediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$bidmachine$nativead$view$NativeState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 372
    invoke-static {}, Lio/bidmachine/nativead/view/NativeState;->values()[Lio/bidmachine/nativead/view/NativeState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/nativead/view/MediaView$8;->$SwitchMap$io$bidmachine$nativead$view$NativeState:[I

    :try_start_0
    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->IMAGE:Lio/bidmachine/nativead/view/NativeState;

    invoke-virtual {v1}, Lio/bidmachine/nativead/view/NativeState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/bidmachine/nativead/view/MediaView$8;->$SwitchMap$io$bidmachine$nativead$view$NativeState:[I

    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->LOADING:Lio/bidmachine/nativead/view/NativeState;

    invoke-virtual {v1}, Lio/bidmachine/nativead/view/NativeState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lio/bidmachine/nativead/view/MediaView$8;->$SwitchMap$io$bidmachine$nativead$view$NativeState:[I

    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->PLAYING:Lio/bidmachine/nativead/view/NativeState;

    invoke-virtual {v1}, Lio/bidmachine/nativead/view/NativeState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lio/bidmachine/nativead/view/MediaView$8;->$SwitchMap$io$bidmachine$nativead$view$NativeState:[I

    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->PAUSED:Lio/bidmachine/nativead/view/NativeState;

    invoke-virtual {v1}, Lio/bidmachine/nativead/view/NativeState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
