.class Lcom/j256/ormlite/field/FieldType$LevelCounters;
.super Ljava/lang/Object;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/field/FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LevelCounters"
.end annotation


# instance fields
.field autoRefreshLevel:I

.field autoRefreshLevelMax:I

.field foreignCollectionLevel:I

.field foreignCollectionLevelMax:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
