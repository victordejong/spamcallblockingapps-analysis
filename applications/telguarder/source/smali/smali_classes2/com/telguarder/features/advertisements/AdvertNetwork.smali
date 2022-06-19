.class public Lcom/telguarder/features/advertisements/AdvertNetwork;
.super Ljava/lang/Object;
.source "AdvertNetwork.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# instance fields
.field public description:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "description"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field public name:Lcom/telguarder/features/advertisements/AdvertNetworkName;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "name"
    .end annotation
.end field

.field public placementId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "placementId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
