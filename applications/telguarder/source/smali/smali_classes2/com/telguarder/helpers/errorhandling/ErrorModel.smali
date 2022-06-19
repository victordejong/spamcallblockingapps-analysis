.class public Lcom/telguarder/helpers/errorhandling/ErrorModel;
.super Ljava/lang/Object;
.source "ErrorModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public activity:Landroid/app/Activity;

.field public message:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static errorModelOfTitleAndMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/telguarder/helpers/errorhandling/ErrorModel;
    .locals 1

    .line 16
    new-instance v0, Lcom/telguarder/helpers/errorhandling/ErrorModel;

    invoke-direct {v0}, Lcom/telguarder/helpers/errorhandling/ErrorModel;-><init>()V

    .line 17
    iput-object p0, v0, Lcom/telguarder/helpers/errorhandling/ErrorModel;->activity:Landroid/app/Activity;

    .line 18
    iput-object p1, v0, Lcom/telguarder/helpers/errorhandling/ErrorModel;->title:Ljava/lang/String;

    .line 19
    iput-object p2, v0, Lcom/telguarder/helpers/errorhandling/ErrorModel;->message:Ljava/lang/String;

    return-object v0
.end method
