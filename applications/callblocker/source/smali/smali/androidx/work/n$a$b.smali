.class public final Landroidx/work/n$a$b;
.super Landroidx/work/n$a;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/n$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Landroidx/work/n$a;-><init>()V

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Landroidx/work/n$1;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Landroidx/work/n$a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string/jumbo v0, "IN_PROGRESS"

    return-object v0
.end method
