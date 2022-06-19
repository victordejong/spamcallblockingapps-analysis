.class final enum Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;
.super Ljava/lang/Enum;
.source "DialpadFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

.field public static final enum b:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

.field public static final enum c:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

.field public static final enum d:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

.field public static final enum e:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

.field public static final enum f:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

.field private static final synthetic g:[Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    const/4 v2, 0x0

    const-string v3, "COPY_NUMBER"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;->a:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    const/4 v2, 0x1

    const-string v3, "CALL_NUMBER"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;->b:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    const/4 v2, 0x2

    const-string v3, "SMS"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;->c:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    const/4 v2, 0x3

    const-string v3, "CONTACT_DETAILS"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;->d:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    const/4 v2, 0x4

    const-string v3, "EDIT_CONTACT_CREATE"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;->e:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    const/4 v2, 0x5

    const-string v3, "EDIT_PASTE"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;->f:Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    aput-object v1, v0, v2

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;->g:[Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;
    .locals 1

    const-class v0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    return-object p0
.end method

.method public static values()[Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;
    .locals 1

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;->g:[Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    invoke-virtual {v0}, [Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mistergroup/shouldianswer/ui/dialpad/DialpadFragment$b;

    return-object v0
.end method
