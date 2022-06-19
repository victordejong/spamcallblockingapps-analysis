.class public Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
.super Ljava/lang/Object;
.source "BaseDateType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/field/types/BaseDateType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DateStringFormatConfig"
.end annotation


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;

.field private final dateFormatStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->dateFormatStr:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->dateFormatStr:Ljava/lang/String;

    return-object v0
.end method
