.class public final enum Lcarbon/widget/BackdropLayout$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/BackdropLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcarbon/widget/BackdropLayout$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcarbon/widget/BackdropLayout$a;

.field public static final synthetic b:[Lcarbon/widget/BackdropLayout$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcarbon/widget/BackdropLayout$a;

    new-instance v1, Lcarbon/widget/BackdropLayout$a;

    const-string v2, "LEFT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcarbon/widget/BackdropLayout$a;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lcarbon/widget/BackdropLayout$a;

    const-string v2, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcarbon/widget/BackdropLayout$a;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lcarbon/widget/BackdropLayout$a;

    const-string v2, "BOTTOM"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcarbon/widget/BackdropLayout$a;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lcarbon/widget/BackdropLayout$a;

    const-string v2, "TOP"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcarbon/widget/BackdropLayout$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcarbon/widget/BackdropLayout$a;->a:Lcarbon/widget/BackdropLayout$a;

    aput-object v1, v0, v3

    new-instance v1, Lcarbon/widget/BackdropLayout$a;

    const-string v2, "START"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcarbon/widget/BackdropLayout$a;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lcarbon/widget/BackdropLayout$a;

    const-string v2, "END"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcarbon/widget/BackdropLayout$a;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    sput-object v0, Lcarbon/widget/BackdropLayout$a;->b:[Lcarbon/widget/BackdropLayout$a;

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

.method public static valueOf(Ljava/lang/String;)Lcarbon/widget/BackdropLayout$a;
    .locals 1

    const-class v0, Lcarbon/widget/BackdropLayout$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcarbon/widget/BackdropLayout$a;

    return-object p0
.end method

.method public static values()[Lcarbon/widget/BackdropLayout$a;
    .locals 1

    sget-object v0, Lcarbon/widget/BackdropLayout$a;->b:[Lcarbon/widget/BackdropLayout$a;

    invoke-virtual {v0}, [Lcarbon/widget/BackdropLayout$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcarbon/widget/BackdropLayout$a;

    return-object v0
.end method
