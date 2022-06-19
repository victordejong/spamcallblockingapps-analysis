.class final Lio/bidmachine/core/Logger$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/core/Logger$LoggerMessageBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/core/Logger$1;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lio/bidmachine/core/Logger$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
