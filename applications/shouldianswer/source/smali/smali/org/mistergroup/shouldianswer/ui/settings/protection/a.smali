.class public final synthetic Lorg/mistergroup/shouldianswer/ui/settings/protection/a;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lorg/mistergroup/shouldianswer/model/af;->values()[Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/settings/protection/a;->a:[I

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/settings/protection/a;->a:[I

    sget-object v1, Lorg/mistergroup/shouldianswer/model/af;->d:Lorg/mistergroup/shouldianswer/model/af;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/af;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/settings/protection/a;->a:[I

    sget-object v1, Lorg/mistergroup/shouldianswer/model/af;->c:Lorg/mistergroup/shouldianswer/model/af;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/af;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/settings/protection/a;->a:[I

    sget-object v1, Lorg/mistergroup/shouldianswer/model/af;->b:Lorg/mistergroup/shouldianswer/model/af;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/af;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    invoke-static {}, Lorg/mistergroup/shouldianswer/model/a;->values()[Lorg/mistergroup/shouldianswer/model/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/settings/protection/a;->b:[I

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/settings/protection/a;->b:[I

    sget-object v1, Lorg/mistergroup/shouldianswer/model/a;->b:Lorg/mistergroup/shouldianswer/model/a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/a;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/settings/protection/a;->b:[I

    sget-object v1, Lorg/mistergroup/shouldianswer/model/a;->c:Lorg/mistergroup/shouldianswer/model/a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/a;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/settings/protection/a;->b:[I

    sget-object v1, Lorg/mistergroup/shouldianswer/model/a;->d:Lorg/mistergroup/shouldianswer/model/a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/a;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
