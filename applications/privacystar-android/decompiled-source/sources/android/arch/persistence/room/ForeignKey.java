package android.arch.persistence.room;
/* loaded from: classes-dex2jar.jar:android/arch/persistence/room/ForeignKey.class */
public @interface ForeignKey {
    public static final int CASCADE = 5;
    public static final int NO_ACTION = 1;
    public static final int RESTRICT = 2;
    public static final int SET_DEFAULT = 4;
    public static final int SET_NULL = 3;

    /* loaded from: classes-dex2jar.jar:android/arch/persistence/room/ForeignKey$Action.class */
    public @interface Action {
    }

    String[] childColumns();

    boolean deferred() default false;

    Class entity();

    @Action
    int onDelete() default 1;

    @Action
    int onUpdate() default 1;

    String[] parentColumns();
}
