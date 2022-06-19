.class public final enum Lcarbon/widget/DropDown$g;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/DropDown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcarbon/widget/DropDown$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcarbon/widget/DropDown$g;

.field public static final enum b:Lcarbon/widget/DropDown$g;

.field public static final synthetic c:[Lcarbon/widget/DropDown$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcarbon/widget/DropDown$g;

    const-string v1, "Over"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcarbon/widget/DropDown$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcarbon/widget/DropDown$g;->a:Lcarbon/widget/DropDown$g;

    new-instance v1, Lcarbon/widget/DropDown$g;

    const-string v3, "Fit"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcarbon/widget/DropDown$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcarbon/widget/DropDown$g;->b:Lcarbon/widget/DropDown$g;

    const/4 v3, 0x2

    new-array v3, v3, [Lcarbon/widget/DropDown$g;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcarbon/widget/DropDown$g;->c:[Lcarbon/widget/DropDown$g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcarbon/widget/DropDown$g;
    .locals 1

    const-class v0, Lcarbon/widget/DropDown$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcarbon/widget/DropDown$g;

    return-object p0
.end method

.method public static values()[Lcarbon/widget/DropDown$g;
    .locals 1

    sget-object v0, Lcarbon/widget/DropDown$g;->c:[Lcarbon/widget/DropDown$g;

    invoke-virtual {v0}, [Lcarbon/widget/DropDown$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcarbon/widget/DropDown$g;

    return-object v0
.end method
