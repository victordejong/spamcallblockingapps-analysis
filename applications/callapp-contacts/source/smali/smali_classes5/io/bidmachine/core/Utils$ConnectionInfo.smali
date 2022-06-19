.class public Lio/bidmachine/core/Utils$ConnectionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionInfo"
.end annotation


# instance fields
.field public final isFastType:Z

.field public final subtype:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lio/bidmachine/core/Utils$ConnectionInfo;->type:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lio/bidmachine/core/Utils$ConnectionInfo;->subtype:Ljava/lang/String;

    .line 150
    iput-boolean p3, p0, Lio/bidmachine/core/Utils$ConnectionInfo;->isFastType:Z

    return-void
.end method
