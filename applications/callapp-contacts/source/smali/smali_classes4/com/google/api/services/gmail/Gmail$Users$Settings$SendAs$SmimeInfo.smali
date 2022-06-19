.class public final Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$SmimeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmimeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$SmimeInfo$SetDefault;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$SmimeInfo$List;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$SmimeInfo$Insert;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$SmimeInfo$Get;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$SmimeInfo$Delete;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;)V
    .locals 0

    .line 8169
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs$SmimeInfo;->a:Lcom/google/api/services/gmail/Gmail$Users$Settings$SendAs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
