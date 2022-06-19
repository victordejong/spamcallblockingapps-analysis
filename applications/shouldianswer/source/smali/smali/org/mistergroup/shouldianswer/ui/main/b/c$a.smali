.class public final enum Lorg/mistergroup/shouldianswer/ui/main/b/c$a;
.super Ljava/lang/Enum;
.source "FavoritesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/ui/main/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mistergroup/shouldianswer/ui/main/b/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

.field public static final enum b:Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

.field public static final enum c:Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

.field public static final enum d:Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

.field private static final synthetic e:[Lorg/mistergroup/shouldianswer/ui/main/b/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    const/4 v2, 0x0

    const-string v3, "COPY_NUMBER"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;->a:Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    const/4 v2, 0x1

    const-string v3, "CALL_NUMBER"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;->b:Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    const/4 v2, 0x2

    const-string v3, "SMS"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;->c:Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    const/4 v2, 0x3

    const-string v3, "CONTACT_DETAILS"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;->d:Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    aput-object v1, v0, v2

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;->e:[Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mistergroup/shouldianswer/ui/main/b/c$a;
    .locals 1

    const-class v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    return-object p0
.end method

.method public static values()[Lorg/mistergroup/shouldianswer/ui/main/b/c$a;
    .locals 1

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/b/c$a;->e:[Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    invoke-virtual {v0}, [Lorg/mistergroup/shouldianswer/ui/main/b/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mistergroup/shouldianswer/ui/main/b/c$a;

    return-object v0
.end method
