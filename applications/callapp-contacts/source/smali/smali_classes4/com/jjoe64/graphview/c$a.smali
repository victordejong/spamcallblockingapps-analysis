.class public final enum Lcom/jjoe64/graphview/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jjoe64/graphview/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jjoe64/graphview/c$a;

.field public static final enum BOTH:Lcom/jjoe64/graphview/c$a;

.field public static final enum HORIZONTAL:Lcom/jjoe64/graphview/c$a;

.field public static final enum NONE:Lcom/jjoe64/graphview/c$a;

.field public static final enum VERTICAL:Lcom/jjoe64/graphview/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 171
    new-instance v0, Lcom/jjoe64/graphview/c$a;

    const-string v1, "BOTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jjoe64/graphview/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/c$a;->BOTH:Lcom/jjoe64/graphview/c$a;

    .line 176
    new-instance v1, Lcom/jjoe64/graphview/c$a;

    const-string v3, "VERTICAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/jjoe64/graphview/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/jjoe64/graphview/c$a;->VERTICAL:Lcom/jjoe64/graphview/c$a;

    .line 181
    new-instance v3, Lcom/jjoe64/graphview/c$a;

    const-string v5, "HORIZONTAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/jjoe64/graphview/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/jjoe64/graphview/c$a;->HORIZONTAL:Lcom/jjoe64/graphview/c$a;

    .line 186
    new-instance v5, Lcom/jjoe64/graphview/c$a;

    const-string v7, "NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/jjoe64/graphview/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/jjoe64/graphview/c$a;->NONE:Lcom/jjoe64/graphview/c$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/jjoe64/graphview/c$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 166
    sput-object v7, Lcom/jjoe64/graphview/c$a;->$VALUES:[Lcom/jjoe64/graphview/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jjoe64/graphview/c$a;
    .locals 1

    .line 166
    const-class v0, Lcom/jjoe64/graphview/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jjoe64/graphview/c$a;

    return-object p0
.end method

.method public static values()[Lcom/jjoe64/graphview/c$a;
    .locals 1

    .line 166
    sget-object v0, Lcom/jjoe64/graphview/c$a;->$VALUES:[Lcom/jjoe64/graphview/c$a;

    invoke-virtual {v0}, [Lcom/jjoe64/graphview/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jjoe64/graphview/c$a;

    return-object v0
.end method


# virtual methods
.method public final drawHorizontal()Z
    .locals 1

    .line 189
    sget-object v0, Lcom/jjoe64/graphview/c$a;->BOTH:Lcom/jjoe64/graphview/c$a;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/jjoe64/graphview/c$a;->HORIZONTAL:Lcom/jjoe64/graphview/c$a;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/jjoe64/graphview/c$a;->NONE:Lcom/jjoe64/graphview/c$a;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final drawVertical()Z
    .locals 1

    .line 188
    sget-object v0, Lcom/jjoe64/graphview/c$a;->BOTH:Lcom/jjoe64/graphview/c$a;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/jjoe64/graphview/c$a;->VERTICAL:Lcom/jjoe64/graphview/c$a;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/jjoe64/graphview/c$a;->NONE:Lcom/jjoe64/graphview/c$a;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
