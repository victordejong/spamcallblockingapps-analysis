.class public abstract Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;
.super Lcom/android/mms/dom/smil/ElementTimeContainerImpl;
.source ""

# interfaces
.implements Lorg/w3c/dom/smil/ElementParallelTimeContainer;


# static fields
.field private static final ENDSYNC_ALL:Ljava/lang/String; = "all"

.field private static final ENDSYNC_ATTRIBUTE_NAME:Ljava/lang/String; = "endsync"

.field private static final ENDSYNC_FIRST:Ljava/lang/String; = "first"

.field private static final ENDSYNC_LAST:Ljava/lang/String; = "last"

.field private static final ENDSYNC_MEDIA:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    return-void
.end method


# virtual methods
.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 19

    move/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    const-wide/16 v6, 0x0

    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v8}, Lorg/w3c/dom/smil/ElementTime;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    const-wide v13, 0x408f400000000000L    # 1000.0

    if-ge v11, v10, :cond_1

    invoke-interface {v9, v11}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v15

    mul-double v15, v15, v13

    float-to-double v13, v0

    cmpg-double v17, v15, v13

    if-gtz v17, :cond_0

    cmpl-double v13, v15, v6

    if-ltz v13, :cond_0

    const/4 v12, 0x1

    move-wide v6, v15

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v8}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_3

    invoke-interface {v9, v11}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v15}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v15

    mul-double v15, v15, v13

    float-to-double v13, v0

    cmpg-double v18, v15, v13

    if-gtz v18, :cond_2

    cmpl-double v13, v15, v6

    if-ltz v13, :cond_2

    move-wide v6, v15

    const/4 v12, 0x0

    :cond_2
    add-int/lit8 v11, v11, 0x1

    const-wide v13, 0x408f400000000000L    # 1000.0

    goto :goto_2

    :cond_3
    if-eqz v12, :cond_4

    check-cast v8, Lorg/w3c/dom/Node;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/android/mms/dom/NodeListImpl;

    invoke-direct {v0, v1}, Lcom/android/mms/dom/NodeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public getDur()F
    .locals 2

    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getDur()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getImplicitDuration()F

    move-result v0

    :cond_0
    return v0
.end method

.method public getEndSync()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "endsync"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "last"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "first"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "all"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "media"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->setEndSync(Ljava/lang/String;)V

    return-object v1

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->setEndSync(Ljava/lang/String;)V

    return-object v1
.end method

.method public getImplicitDuration()F
    .locals 9

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getEndSync()Ljava/lang/String;

    move-result-object v0

    const-string v1, "last"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v5}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-interface {v5, v6}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/smil/Time;->getTimeType()S

    move-result v8

    if-nez v8, :cond_0

    return v1

    :cond_0
    invoke-interface {v7}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v7

    double-to-float v7, v7

    cmpl-float v8, v7, v4

    if-lez v8, :cond_1

    move v4, v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v1, v4

    :cond_4
    return v1
.end method

.method public setEndSync(Ljava/lang/String;)V
    .locals 4

    const-string v0, "first"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "last"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported endsync value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "endsync"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
