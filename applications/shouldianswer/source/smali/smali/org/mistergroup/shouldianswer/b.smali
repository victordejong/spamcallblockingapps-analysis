.class public final synthetic Lorg/mistergroup/shouldianswer/b;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/mistergroup/shouldianswer/model/ai$a;->values()[Lorg/mistergroup/shouldianswer/model/ai$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/mistergroup/shouldianswer/b;->a:[I

    sget-object v0, Lorg/mistergroup/shouldianswer/b;->a:[I

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai$a;->a:Lorg/mistergroup/shouldianswer/model/ai$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lorg/mistergroup/shouldianswer/b;->a:[I

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai$a;->b:Lorg/mistergroup/shouldianswer/model/ai$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lorg/mistergroup/shouldianswer/b;->a:[I

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai$a;->c:Lorg/mistergroup/shouldianswer/model/ai$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
