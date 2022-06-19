.class public final synthetic Lf01;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final synthetic a:Lf01;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lf01;

    invoke-direct {v0}, Lf01;-><init>()V

    sput-object v0, Lf01;->a:Lf01;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/GeneralSettingsFragment;->O(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
