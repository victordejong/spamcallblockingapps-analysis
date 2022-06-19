.class public final Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageMediaMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;
    }
.end annotation


# instance fields
.field private aperture:Ljava/lang/Float;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private cameraMake:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private cameraModel:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private colorSpace:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private exposureBias:Ljava/lang/Float;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private exposureMode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private exposureTime:Ljava/lang/Float;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private flashUsed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private focalLength:Ljava/lang/Float;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private height:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private isoSpeed:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private lens:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private location:Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private maxApertureValue:Ljava/lang/Float;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private meteringMode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private rotation:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private sensor:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private subjectDistance:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private time:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private whiteBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private width:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2521
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 2521
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->clone()Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 2521
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->clone()Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 1

    .line 3034
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2521
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->clone()Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public final getAperture()Ljava/lang/Float;
    .locals 1

    .line 2675
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->aperture:Ljava/lang/Float;

    return-object v0
.end method

.method public final getCameraMake()Ljava/lang/String;
    .locals 1

    .line 2692
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->cameraMake:Ljava/lang/String;

    return-object v0
.end method

.method public final getCameraModel()Ljava/lang/String;
    .locals 1

    .line 2709
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->cameraModel:Ljava/lang/String;

    return-object v0
.end method

.method public final getColorSpace()Ljava/lang/String;
    .locals 1

    .line 2726
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->colorSpace:Ljava/lang/String;

    return-object v0
.end method

.method public final getExposureBias()Ljava/lang/Float;
    .locals 1

    .line 2743
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->exposureBias:Ljava/lang/Float;

    return-object v0
.end method

.method public final getExposureMode()Ljava/lang/String;
    .locals 1

    .line 2760
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->exposureMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getExposureTime()Ljava/lang/Float;
    .locals 1

    .line 2777
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->exposureTime:Ljava/lang/Float;

    return-object v0
.end method

.method public final getFlashUsed()Ljava/lang/Boolean;
    .locals 1

    .line 2794
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->flashUsed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getFocalLength()Ljava/lang/Float;
    .locals 1

    .line 2811
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->focalLength:Ljava/lang/Float;

    return-object v0
.end method

.method public final getHeight()Ljava/lang/Integer;
    .locals 1

    .line 2828
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIsoSpeed()Ljava/lang/Integer;
    .locals 1

    .line 2845
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->isoSpeed:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLens()Ljava/lang/String;
    .locals 1

    .line 2862
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->lens:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocation()Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;
    .locals 1

    .line 2879
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->location:Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;

    return-object v0
.end method

.method public final getMaxApertureValue()Ljava/lang/Float;
    .locals 1

    .line 2896
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->maxApertureValue:Ljava/lang/Float;

    return-object v0
.end method

.method public final getMeteringMode()Ljava/lang/String;
    .locals 1

    .line 2913
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->meteringMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getRotation()Ljava/lang/Integer;
    .locals 1

    .line 2930
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->rotation:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSensor()Ljava/lang/String;
    .locals 1

    .line 2947
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->sensor:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubjectDistance()Ljava/lang/Integer;
    .locals 1

    .line 2964
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->subjectDistance:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTime()Ljava/lang/String;
    .locals 1

    .line 2981
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->time:Ljava/lang/String;

    return-object v0
.end method

.method public final getWhiteBalance()Ljava/lang/String;
    .locals 1

    .line 2998
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->whiteBalance:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()Ljava/lang/Integer;
    .locals 1

    .line 3015
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 2521
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 3029
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    return-object p1
.end method

.method public final setAperture(Ljava/lang/Float;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2683
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->aperture:Ljava/lang/Float;

    return-object p0
.end method

.method public final setCameraMake(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2700
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->cameraMake:Ljava/lang/String;

    return-object p0
.end method

.method public final setCameraModel(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2717
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->cameraModel:Ljava/lang/String;

    return-object p0
.end method

.method public final setColorSpace(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2734
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->colorSpace:Ljava/lang/String;

    return-object p0
.end method

.method public final setExposureBias(Ljava/lang/Float;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2751
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->exposureBias:Ljava/lang/Float;

    return-object p0
.end method

.method public final setExposureMode(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2768
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->exposureMode:Ljava/lang/String;

    return-object p0
.end method

.method public final setExposureTime(Ljava/lang/Float;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2785
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->exposureTime:Ljava/lang/Float;

    return-object p0
.end method

.method public final setFlashUsed(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2802
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->flashUsed:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setFocalLength(Ljava/lang/Float;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2819
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->focalLength:Ljava/lang/Float;

    return-object p0
.end method

.method public final setHeight(Ljava/lang/Integer;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2836
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->height:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setIsoSpeed(Ljava/lang/Integer;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2853
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->isoSpeed:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setLens(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2870
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->lens:Ljava/lang/String;

    return-object p0
.end method

.method public final setLocation(Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2887
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->location:Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;

    return-object p0
.end method

.method public final setMaxApertureValue(Ljava/lang/Float;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2904
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->maxApertureValue:Ljava/lang/Float;

    return-object p0
.end method

.method public final setMeteringMode(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2921
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->meteringMode:Ljava/lang/String;

    return-object p0
.end method

.method public final setRotation(Ljava/lang/Integer;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2938
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->rotation:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setSensor(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2955
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->sensor:Ljava/lang/String;

    return-object p0
.end method

.method public final setSubjectDistance(Ljava/lang/Integer;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2972
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->subjectDistance:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setTime(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 2989
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->time:Ljava/lang/String;

    return-object p0
.end method

.method public final setWhiteBalance(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 3006
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->whiteBalance:Ljava/lang/String;

    return-object p0
.end method

.method public final setWidth(Ljava/lang/Integer;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .line 3023
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->width:Ljava/lang/Integer;

    return-object p0
.end method
