.class public Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;
.super Lcom/millennialmedia/internal/adadapters/NativeAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;
    }
.end annotation


# static fields
.field private static final ASSET_COMPONENT_TYPE_ID_BODY:Ljava/lang/String; = "101"

.field private static final ASSET_COMPONENT_TYPE_ID_CALL_TO_ACTION:Ljava/lang/String; = "104"

.field private static final ASSET_COMPONENT_TYPE_ID_DISCLAIMER:Ljava/lang/String; = "106"

.field private static final ASSET_COMPONENT_TYPE_ID_ICON_IMAGE:Ljava/lang/String; = "102"

.field private static final ASSET_COMPONENT_TYPE_ID_MAIN_IMAGE:Ljava/lang/String; = "103"

.field private static final ASSET_COMPONENT_TYPE_ID_RATING:Ljava/lang/String; = "105"

.field private static final ASSET_COMPONENT_TYPE_ID_TITLE:Ljava/lang/String; = "100"

.field private static final TAG:Ljava/lang/String; = "com.millennialmedia.internal.adadapters.NativeNativeAdapter"


# instance fields
.field private bodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private callToActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private disclaimers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private iconImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mainImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private nativeAdapterListener:Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

.field private volatile nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

.field public nativeControllerListener:Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

.field private nativeType:Ljava/lang/String;

.field private ratings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->titles:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->bodies:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->iconImages:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->mainImages:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->callToActions:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->ratings:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->disclaimers:Ljava/util/List;

    new-instance v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeControllerListener:Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->loadComponentsInfo()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeAdapterListener:Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->setLink(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->iconImages:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->mainImages:Ljava/util/List;

    return-object p0
.end method

.method private loadComponentsInfo()Z
    .locals 7

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v2, v2, Lcom/millennialmedia/internal/adcontrollers/NativeController;->assets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v3, v3, Lcom/millennialmedia/internal/adcontrollers/NativeController;->assets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    iget-object v3, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v3, v3, Lcom/millennialmedia/internal/adcontrollers/NativeController;->assets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;

    if-nez v3, :cond_1

    sget-object v3, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Unable to load component, asset is null"

    :goto_1
    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_6

    :cond_1
    iget v4, v3, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_2

    sget-object v3, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v4, "error when processing native asset, asset ID is not the correct length"

    :goto_3
    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x3

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeType:Ljava/lang/String;

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "100"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v4, v3, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->TITLE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v4, v5, :cond_3

    new-instance v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v4}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    iget-object v5, v3, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->title:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Title;

    iget-object v5, v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Title;->value:Ljava/lang/String;

    iput-object v5, v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->setLink(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    iget-object v3, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->titles:Ljava/util/List;

    :goto_4
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Unable to load title component, asset not the expected type"

    goto :goto_1

    :cond_4
    const-string v5, "101"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v4, v3, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->DATA:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v4, v5, :cond_5

    new-instance v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v4}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    iget-object v5, v3, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->data:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    iget-object v5, v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;->value:Ljava/lang/String;

    iput-object v5, v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->setLink(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    iget-object v3, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->bodies:Ljava/util/List;

    goto :goto_4

    :cond_5
    sget-object v3, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Unable to load body component, asset not the expected type"

    goto :goto_1

    :cond_6
    const-string v5, "102"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v4, v3, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->IMAGE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v4, v5, :cond_7

    iget-object v4, v3, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->image:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;

    iget-object v4, v4, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;->url:Ljava/lang/String;

    new-instance v5, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$2;

    invoke-direct {v5, p0, v3, v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$2;-><init>(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;Ljava/util/concurrent/CountDownLatch;)V

    :goto_5
    invoke-direct {p0, v4, v5}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->loadImageComponent(Ljava/lang/String;Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;)V

    goto/16 :goto_6

    :cond_7
    sget-object v3, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Unable to load icon image component, asset not the expected type"

    goto/16 :goto_1

    :cond_8
    const-string v5, "103"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v4, v3, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->IMAGE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v4, v5, :cond_9

    iget-object v4, v3, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->image:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;

    iget-object v4, v4, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;->url:Ljava/lang/String;

    new-instance v5, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$3;

    invoke-direct {v5, p0, v3, v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$3;-><init>(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_5

    :cond_9
    sget-object v3, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Unable to load main image component, asset not the expected type"

    goto/16 :goto_1

    :cond_a
    const-string v5, "104"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v4, v3, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->DATA:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v4, v5, :cond_b

    new-instance v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v4}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    iget-object v5, v3, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->data:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    iget-object v5, v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;->value:Ljava/lang/String;

    iput-object v5, v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->setLink(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    iget-object v3, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->callToActions:Ljava/util/List;

    goto/16 :goto_4

    :cond_b
    sget-object v3, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Unable to load call to action text component, asset not the expected type"

    goto/16 :goto_1

    :cond_c
    const-string v5, "105"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v4, v3, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->DATA:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v4, v5, :cond_d

    new-instance v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v4}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    iget-object v5, v3, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->data:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    iget-object v5, v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;->value:Ljava/lang/String;

    iput-object v5, v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->setLink(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    iget-object v3, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->ratings:Ljava/util/List;

    goto/16 :goto_4

    :cond_d
    sget-object v3, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Unable to load rating component, asset not the expected type"

    goto/16 :goto_1

    :cond_e
    const-string v5, "106"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v4, v3, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->DATA:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v4, v5, :cond_f

    new-instance v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v4}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    iget-object v5, v3, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->data:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    iget-object v5, v5, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;->value:Ljava/lang/String;

    iput-object v5, v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->setLink(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    iget-object v3, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->disclaimers:Ljava/util/List;

    goto/16 :goto_4

    :cond_f
    sget-object v3, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Unable to load disclaimer component, asset not the expected type"

    goto/16 :goto_1

    :cond_10
    sget-object v3, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load component from asset, asset type is unrecognized <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_11
    const-wide/16 v2, 0x1388

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    sget-object v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Error occurred when loading native component info"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private loadImageComponent(Ljava/lang/String;Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;)V
    .locals 3

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/HttpUtils;->getBitmapFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    iget v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    invoke-direct {v1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;-><init>()V

    iput-object p1, v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->bitmapUrl:Ljava/lang/String;

    iget-object p1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    iput-object p1, v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->width:I

    iget-object p1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->height:I

    invoke-interface {p2, v1}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;->imageLoaded(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;->imageLoaded(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;)V

    :goto_0
    return-void
.end method

.method private setLink(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V
    .locals 1

    iget-object p2, p2, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->url:Ljava/lang/String;

    iput-object v0, p1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickUrl:Ljava/lang/String;

    :goto_0
    iget-object p2, p2, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->clickTrackerUrls:Ljava/util/List;

    iput-object p2, p1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickTrackerUrls:Ljava/util/List;

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object p2, p2, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object p2, p2, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    iget-object p2, p2, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->url:Ljava/lang/String;

    iput-object p2, p1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickUrl:Ljava/lang/String;

    iget-object p2, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object p2, p2, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getBodyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->bodies:Ljava/util/List;

    return-object v0
.end method

.method public getCallToActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->callToActions:Ljava/util/List;

    return-object v0
.end method

.method public getClickTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->clickTrackerUrls:Ljava/util/List;

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->url:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisclaimerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->disclaimers:Ljava/util/List;

    return-object v0
.end method

.method public getIconImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->iconImages:Ljava/util/List;

    return-object v0
.end method

.method public getImpressionTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->impTrackers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->impTrackers:Ljava/util/List;

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMainImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->mainImages:Ljava/util/List;

    return-object v0
.end method

.method public getRatingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->ratings:Ljava/util/List;

    return-object v0
.end method

.method public getTitleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->titles:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeType:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;)V
    .locals 1

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeAdapterListener:Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    new-instance p1, Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeControllerListener:Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

    invoke-direct {p1, v0}, Lcom/millennialmedia/internal/adcontrollers/NativeController;-><init>(Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;)V

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->adContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/millennialmedia/internal/adcontrollers/NativeController;->init(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adcontrollers/NativeController;->close()V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adcontrollers/NativeController;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->titles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->bodies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->iconImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->mainImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->callToActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->ratings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->disclaimers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
