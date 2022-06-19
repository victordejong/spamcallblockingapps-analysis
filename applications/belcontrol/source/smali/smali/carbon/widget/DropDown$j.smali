.class public final enum Lcarbon/widget/DropDown$j;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/DropDown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcarbon/widget/DropDown$j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcarbon/widget/DropDown$j;

.field public static final enum b:Lcarbon/widget/DropDown$j;

.field public static final enum c:Lcarbon/widget/DropDown$j;

.field public static final synthetic d:[Lcarbon/widget/DropDown$j;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcarbon/widget/DropDown$j;

    const-string v1, "SingleSelect"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcarbon/widget/DropDown$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcarbon/widget/DropDown$j;->a:Lcarbon/widget/DropDown$j;

    new-instance v1, Lcarbon/widget/DropDown$j;

    const-string v3, "MultiSelect"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcarbon/widget/DropDown$j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcarbon/widget/DropDown$j;->b:Lcarbon/widget/DropDown$j;

    new-instance v3, Lcarbon/widget/DropDown$j;

    const-string v5, "Editable"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcarbon/widget/DropDown$j;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcarbon/widget/DropDown$j;->c:Lcarbon/widget/DropDown$j;

    const/4 v5, 0x3

    new-array v5, v5, [Lcarbon/widget/DropDown$j;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcarbon/widget/DropDown$j;->d:[Lcarbon/widget/DropDown$j;

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

.method public static valueOf(Ljava/lang/String;)Lcarbon/widget/DropDown$j;
    .locals 1

    const-class v0, Lcarbon/widget/DropDown$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcarbon/widget/DropDown$j;

    return-object p0
.end method

.method public static values()[Lcarbon/widget/DropDown$j;
    .locals 1

    sget-object v0, Lcarbon/widget/DropDown$j;->d:[Lcarbon/widget/DropDown$j;

    invoke-virtual {v0}, [Lcarbon/widget/DropDown$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcarbon/widget/DropDown$j;

    return-object v0
.end method
