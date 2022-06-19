.class public final enum Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

.field public static final enum b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

.field public static final enum c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

.field public static final synthetic d:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    const-string v1, "RULE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    const-string v3, "CONTACT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    new-instance v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    const-string v5, "CALL_LOG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->d:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

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

.method public static valueOf(Ljava/lang/String;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;
    .locals 1

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    return-object p0
.end method

.method public static values()[Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->d:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    invoke-virtual {v0}, [Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    return-object v0
.end method
