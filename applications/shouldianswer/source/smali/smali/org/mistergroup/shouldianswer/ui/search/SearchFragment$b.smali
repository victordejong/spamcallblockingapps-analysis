.class final enum Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;
.super Ljava/lang/Enum;
.source "SearchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

.field public static final enum b:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

.field public static final enum c:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

.field public static final enum d:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

.field public static final enum e:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

.field private static final synthetic f:[Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    const/4 v2, 0x0

    const-string v3, "COPY_NUMBER"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->a:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    const/4 v2, 0x1

    const-string v3, "CALL_NUMBER"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->b:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    const/4 v2, 0x2

    const-string v3, "SMS"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->c:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    const/4 v2, 0x3

    const-string v3, "CONTACT_DETAILS"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->d:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    const/4 v2, 0x4

    const-string v3, "CONTACT_CREATE"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->e:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    aput-object v1, v0, v2

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->f:[Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;
    .locals 1

    const-class v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    return-object p0
.end method

.method public static values()[Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;
    .locals 1

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->f:[Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    invoke-virtual {v0}, [Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$b;

    return-object v0
.end method
