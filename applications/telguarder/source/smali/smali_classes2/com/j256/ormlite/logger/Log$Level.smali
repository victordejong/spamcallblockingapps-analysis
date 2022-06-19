.class public final enum Lcom/j256/ormlite/logger/Log$Level;
.super Ljava/lang/Enum;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/logger/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/j256/ormlite/logger/Log$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/j256/ormlite/logger/Log$Level;

.field public static final enum DEBUG:Lcom/j256/ormlite/logger/Log$Level;

.field public static final enum ERROR:Lcom/j256/ormlite/logger/Log$Level;

.field public static final enum FATAL:Lcom/j256/ormlite/logger/Log$Level;

.field public static final enum INFO:Lcom/j256/ormlite/logger/Log$Level;

.field public static final enum OFF:Lcom/j256/ormlite/logger/Log$Level;

.field public static final enum TRACE:Lcom/j256/ormlite/logger/Log$Level;

.field public static final enum WARNING:Lcom/j256/ormlite/logger/Log$Level;


# instance fields
.field private level:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 30
    new-instance v0, Lcom/j256/ormlite/logger/Log$Level;

    const-string v1, "TRACE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/logger/Log$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    .line 32
    new-instance v1, Lcom/j256/ormlite/logger/Log$Level;

    const-string v4, "DEBUG"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/j256/ormlite/logger/Log$Level;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    .line 34
    new-instance v4, Lcom/j256/ormlite/logger/Log$Level;

    const-string v6, "INFO"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/j256/ormlite/logger/Log$Level;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    .line 36
    new-instance v6, Lcom/j256/ormlite/logger/Log$Level;

    const-string v8, "WARNING"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/j256/ormlite/logger/Log$Level;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    .line 38
    new-instance v8, Lcom/j256/ormlite/logger/Log$Level;

    const-string v10, "ERROR"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/j256/ormlite/logger/Log$Level;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    .line 40
    new-instance v10, Lcom/j256/ormlite/logger/Log$Level;

    const-string v12, "FATAL"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/j256/ormlite/logger/Log$Level;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/j256/ormlite/logger/Log$Level;->FATAL:Lcom/j256/ormlite/logger/Log$Level;

    .line 42
    new-instance v12, Lcom/j256/ormlite/logger/Log$Level;

    const-string v14, "OFF"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/j256/ormlite/logger/Log$Level;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/j256/ormlite/logger/Log$Level;->OFF:Lcom/j256/ormlite/logger/Log$Level;

    new-array v14, v15, [Lcom/j256/ormlite/logger/Log$Level;

    aput-object v0, v14, v2

    aput-object v1, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    .line 28
    sput-object v14, Lcom/j256/ormlite/logger/Log$Level;->$VALUES:[Lcom/j256/ormlite/logger/Log$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/j256/ormlite/logger/Log$Level;->level:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log$Level;
    .locals 1

    .line 28
    const-class v0, Lcom/j256/ormlite/logger/Log$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/j256/ormlite/logger/Log$Level;

    return-object p0
.end method

.method public static values()[Lcom/j256/ormlite/logger/Log$Level;
    .locals 1

    .line 28
    sget-object v0, Lcom/j256/ormlite/logger/Log$Level;->$VALUES:[Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v0}, [Lcom/j256/ormlite/logger/Log$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/j256/ormlite/logger/Log$Level;

    return-object v0
.end method


# virtual methods
.method public isEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z
    .locals 1

    .line 58
    sget-object v0, Lcom/j256/ormlite/logger/Log$Level;->OFF:Lcom/j256/ormlite/logger/Log$Level;

    if-eq p0, v0, :cond_0

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/j256/ormlite/logger/Log$Level;->level:I

    iget p1, p1, Lcom/j256/ormlite/logger/Log$Level;->level:I

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
