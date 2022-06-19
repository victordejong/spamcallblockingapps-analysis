.class public final synthetic Lorg/mistergroup/shouldianswer/ui/main/c/p;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/mistergroup/shouldianswer/model/k;->values()[Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/p;->a:[I

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/p;->a:[I

    sget-object v1, Lorg/mistergroup/shouldianswer/model/k;->b:Lorg/mistergroup/shouldianswer/model/k;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/k;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    return-void
.end method
