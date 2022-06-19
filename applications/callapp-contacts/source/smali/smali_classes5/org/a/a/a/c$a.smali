.class public final enum Lorg/a/a/a/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/a/a/a/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/a/a/a/c$a;

.field public static final enum REGULAR:Lorg/a/a/a/c$a;

.field public static final enum THREAD_SAFE:Lorg/a/a/a/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lorg/a/a/a/c$a;

    const-string v1, "REGULAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/a/a/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/a/a/a/c$a;->REGULAR:Lorg/a/a/a/c$a;

    .line 38
    new-instance v1, Lorg/a/a/a/c$a;

    const-string v3, "THREAD_SAFE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/a/a/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/a/a/a/c$a;->THREAD_SAFE:Lorg/a/a/a/c$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/a/a/a/c$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 33
    sput-object v3, Lorg/a/a/a/c$a;->$VALUES:[Lorg/a/a/a/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/a/a/a/c$a;
    .locals 1

    .line 33
    const-class v0, Lorg/a/a/a/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/a/a/a/c$a;

    return-object p0
.end method

.method public static values()[Lorg/a/a/a/c$a;
    .locals 1

    .line 33
    sget-object v0, Lorg/a/a/a/c$a;->$VALUES:[Lorg/a/a/a/c$a;

    invoke-virtual {v0}, [Lorg/a/a/a/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/a/a/a/c$a;

    return-object v0
.end method
